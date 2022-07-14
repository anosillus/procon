# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-07-14
# Last Change: 2022-07-14

import sys


def I():
    return int(sys.stdin.readline().rstrip())


N = I()
# 1 <= N <= 30

a = 1
b = 2
c = 4

if N == 1:
    print(a)
elif N == 2:
    print(b)
elif N == 3:
    print(c)
else:
    for n in range(3, N):
        now = a + b + c
        a = b
        b = c
        c = now

    print(c)
