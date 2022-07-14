# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-07-14
# Last Change: 2022-07-14

import sys
import numpy as np


def LI():
    return list(map(int, sys.stdin.readline().rstrip().split()))


N, M = LI()
D = LI()

D.sort(reverse=True)
ans = np.full(N + 1, False)
ans[0] = True

for n in range(N + 1):
    if ans[n] == True:
        continue
    else:
        for d in D:
            if n >= d and ans[n - d] == True:
                ans[n] = True

                break
            else:
                continue

print("Yes" if ans[-1] else "No")
