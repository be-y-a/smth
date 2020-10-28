from collections import defaultdict

import numpy as np

from sklearn.model_selection import KFold, BaseCrossValidator
from sklearn.metrics import accuracy_score

from knn.classification import KNNClassifier


def knn_cross_val_score(X, y, k_list, scoring, cv=None, **kwargs):
    y = np.asarray(y)

    if scoring == "accuracy":
        scorer = accuracy_score
    else:
        raise ValueError("Unknown scoring metric", scoring)

    if cv is None:
        cv = KFold(n_splits=5)
    elif not isinstance(cv, BaseCrossValidator):
        raise TypeError("cv should be BaseCrossValidator instance", type(cv))

<<<<<<< HEAD
<<<<<<< HEAD
    raise not NotImplementedError()
=======
=======
>>>>>>> 11e132d9ea3bb4e0640319448b058b86510769ce
    result = defaultdict(list)

    metric = kwargs.pop('metric', 'euclidean')
    weights = kwargs.pop('weights', 'uniform')
    algorithm = kwargs.pop('algorithm', 'brute')

    for train_index, test_index in cv.split(X):
        X_train, X_test = X[train_index], X[test_index]
        y_train, y_test = y[train_index], y[test_index]
        clf = BatchedKNNClassifier(n_neighbors=NEIGHBOURS_COUNT, algorithm=algorithm, metric=metric, weights=weights)
        clf.set_batch_size(1000)
#         clf = KNNClassifier(n_neighbors=np.max(k_list),
#                             algorithm=algorithm,
#                             metric=metric,
#                             weights=weights
#                             )
        clf.fit(X_train, y_train)
        distances, indices = clf.kneighbors(X_test, return_distance=True)
        for k in k_list:
            y_pred = clf._predict_precomputed(indices[:, :k], distances[:, :k])
            result[k].append(scorer(y_pred, y_test))

    for k, v in result.items():
        result[k] = np.asarray(v)

    return result
<<<<<<< HEAD
>>>>>>> 1af335bb7bc50eaa9cf5c807730bf309052fde79
=======
>>>>>>> 11e132d9ea3bb4e0640319448b058b86510769ce
