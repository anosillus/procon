# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-07-13
# Last Change: 2022-07-13

import sys


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N, X, Y = LI()


A = [0 for _ in range(N)]

A[0], A[1] = X, Y

for i in range(2, N):
    A[i] = (A[i - 1] + A[i - 2]) % 100
print(A[-1])
