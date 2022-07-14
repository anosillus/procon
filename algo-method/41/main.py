# -*- coding: utf-8 -*-

import sys


def I():
    return int(sys.stdin.readline().rstrip())


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N = I()
A = [LI() for _ in range(N)]

last_a = [0] * 3

for a in A:
    next_a = [a[i] + max(last_a[:i] + last_a[i + 1 :]) for i in range(3)]
    last_a = next_a
print(max(last_a))
