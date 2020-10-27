import numpy as np

from sklearn.neighbors import NearestNeighbors
from knn.nearest_neighbors import NearestNeighborsFinder


class KNNClassifier:
    EPS = 1e-5

    def __init__(self, n_neighbors, algorithm='my_own', metric='euclidean', weights='uniform'):
        if algorithm == 'my_own':
            finder = NearestNeighborsFinder(n_neighbors=n_neighbors, metric=metric)
        elif algorithm in ('brute', 'ball_tree', 'kd_tree',):
            finder = NearestNeighbors(n_neighbors=n_neighbors, algorithm=algorithm, metric=metric)
        else:
            raise ValueError("Algorithm is not supported", metric)

        if weights not in ('uniform', 'distance'):
            raise ValueError("Weighted algorithm is not supported", weights)

        self._finder = finder
        self._weights = weights

    def fit(self, X, y=None):
        self._finder.fit(X)
        self._labels = np.asarray(y)
        return self

    def _predict_precomputed(self, indices, distances):
        testCount = indices.shape[0]
        labelsTiled = np.tile(self._labels, (testCount, 1))
        labelsMatrix = np.take_along_axis(labelsTiled, indices, axis=1)
        neighbourCount = indices.shape[1]
        if self._weights == "uniform":
            result = np.apply_along_axis(lambda x: np.argmax(np.bincount(x)), 1, labelsMatrix)
            return result
        elif self._weights == "distance":
            weightMatrix = 1.0 / (distances + self.EPS)
            gluedLabelsDistancesMatrix = np.hstack((labelsMatrix, weightMatrix))
            def optLabel(labelsAndDistances):
                intLabels = labelsAndDistances[:neighbourCount].astype(np.int)
                distancesSubArray = labelsAndDistances[neighbourCount:]
                bc = np.bincount(intLabels, distancesSubArray)
                return np.argmax(bc)
           
            result = np.apply_along_axis(optLabel, 1, gluedLabelsDistancesMatrix)
            return result
        else:
            raise ValueError("Weighted algorithm is not supported")
        return indices

    def kneighbors(self, X, return_distance=False):
        return self._finder.kneighbors(X, return_distance=return_distance)


    def predict(self, X):
        distances, indices = self.kneighbors(X, return_distance=True)
        return self._predict_precomputed(indices, distances)


class BatchedMixin:
    def __init__(self):
        self.batch_size = None

    def kneighbors(self, X, return_distance=False):
        if not hasattr(self,  'batch_size'):
            self.batch_size = None

        batch_size = self.batch_size or X.shape[0]

        distances, indices = [], []

        for i_min in range(0, X.shape[0], batch_size):
            i_max = min(i_min + batch_size, X.shape[0])
            X_batch = X[i_min:i_max]

            indices_ = super().kneighbors(X_batch, return_distance=return_distance)
            if return_distance:
                distances_, indices_ = indices_
            else:
                distances_ = None

            indices.append(indices_)
            if distances_ is not None:
                distances.append(distances_)

        indices = np.vstack(indices)
        distances = np.vstack(distances) if distances else None

        result = (indices,)
        if return_distance:
            result = (distances,) + result
        return result if len(result) > 1 else result[0]

    def set_batch_size(self, batch_size):
        self.batch_size = batch_size


class BatchedKNNClassifier(BatchedMixin, KNNClassifier):
    def __init__(self, *args, **kwargs):
        KNNClassifier.__init__(self, *args, **kwargs)
        BatchedMixin.__init__(self)
