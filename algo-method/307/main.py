# -*- coding: utf-8 -*-
# File name: <+FILE NAME+>
# First Edit: 2022-06-06
# Last Change: 2022-06-06

import bisect,collections,copy,heapq,itertools,math,numpy,string
import sys

def I(): return int(sys.stdin.readline().rstrip())
def LI(): return list(map(int,sys.stdin.readline().rstrip().split()))

N = I()
A = LI()

# いくらラムダ文とはいえ、これはかなり遅い。
print(sum([i if i > 0 else 0 for i in A]))

