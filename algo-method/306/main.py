# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-07-14
# Last Change: 2022-07-14

import sys
import numpy as np


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N, M = LI()
A = LI()

ans = np.zeros(N, dtype=int)

for n in range(1, N):
    for m in range(1, M + 1):
        if m == 1:
            ans[n] = ans[n - m] + A[n] * m
        elif n >= m:
            ans[n] = min(ans[n], ans[n - m] + A[n] * m)

print(ans[-1])
