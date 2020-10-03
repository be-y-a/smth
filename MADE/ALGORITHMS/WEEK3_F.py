from math import log
import inspect


def timeValue(a, x, vp, vf):
    timeP = ((1 - a) ** 2 + x * x) ** 0.5 / vp
    timeF = (a ** 2 + (1 - x) ** 2) ** 0.5 / vf
    return timeP + timeF

def getOptimanlX(vp, vf, a):
    PRECISION = 1e-6
    INTERVAL_DIHOTOMY_COEFFICIENT = 1.5

    iterationsNumber = int(log(1 / PRECISION, INTERVAL_DIHOTOMY_COEFFICIENT))
    intervalLeftBound = 0.0
    intervalRightBound = 1.0
    for _ in range(iterationsNumber):
        l = intervalLeftBound + 1.0 / 3.0 * (intervalRightBound - intervalLeftBound)
        r = intervalLeftBound + 2.0 / 3.0 * (intervalRightBound - intervalLeftBound)
        if timeValue(a, l, vp, vf) < timeValue(a, r, vp, vf):
            intervalRightBound = r
        else:
            intervalLeftBound = l
    
    return (intervalLeftBound + intervalRightBound) / 2.0

def solveProblem():
    vp, vf = map(int, input().split())
    a = float(input())
    optimalX = getOptimanlX(vp, vf, a)
    
    print('{:.6f}'.format(optimalX))

# solveProblem()

