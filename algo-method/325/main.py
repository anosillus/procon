# -*- coding: utf-8 -*-

import numpy as np
import sys


def I():
    return int(sys.stdin.readline().rstrip())


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N = I()
A = LI()

t = np.zeros((N, N + 2), dtype=int)
t[0][1 : N + 1] = A

for v in range(1, N):
    for s in range(1, N + 1):
        t[v][s] = sum(t[v - 1][s - 1 : s + 2]) % 100
print(t[-1][-2])
