import sys
import numpy as np


def I():
    return int(sys.stdin.readline().rstrip())


# N = I()
N = 3

if N == 1:
    print(1)
    sys.exit()

A = np.zeros(N, dtype=int)
A[0] = 1
A[1] = 2

for n in range(2, N):
    A[n] = A[n - 1] + A[n - 2]

print(A[-1])
