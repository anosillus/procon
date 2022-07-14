# -*- coding: utf-8 -*-

import sys
import numpy as np


def I():
    return int(sys.stdin.readline().rstrip())


N = I()

t = np.zeros((N, N))

t[0][0] = 1
