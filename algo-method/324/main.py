# -*- coding: utf-8 -*-

import sys
import numpy as np


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


A = LI()

t = np.zeros((4, 6), dtype=int)
t[0][1:5] = A

for v in range(1, 4):
    for s in range(1, 5):
        t[v][s] = sum(t[v - 1][s - 1 : s + 2])
print(t)
