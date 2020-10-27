class SegmentTree:
    def __init__(self):
        self.t = []

    def build(self, a):
        x = 1
        n = len(a)
        while x < n:
            x *= 2
        self.t = [0] * (x * 2 - 1)
        firstIndexOfBottomLayer = x - 1
       
        for i in range(0, n):
            self.t[firstIndexOfBottomLayer + i] = a[i]
        
        for v in range(x - 2, -1, -1):
            self.t[v] = self.t[2 * v + 1] + self.t[2 * v + 2]

    def __getForSetAndRsq(v, l, r): 
        return self.t[v] + 


class Solver:

    def __init__(self):
        tree = SegmentTree()
        tree.build([1,2,3,4,5,6,7])

    def solve(self):
        return


Solver().solve()