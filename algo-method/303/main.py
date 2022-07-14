# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-07-14
# Last Change: 2022-07-14

import sys
import numpy as np


def I():
    return int(sys.stdin.readline().rstrip())


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N = I()
A = LI()

T = np.zeros(N)

for n in range(N):
    print(n)

    if n == 0:
        T[n] = 0

    elif n == 1:
        T[n] = T[n - 1] + A[n]
    else:
        T[n] = min(T[n - 1] + A[n], T[n - 2] + A[n] * 2)

print(T[-1])
