#!/usr/bin/env python2

import subprocess, os

while True:
    res = subprocess.call(os.path.join(os.getcwd(), "BoostSleep_test"))
    if res != 0:
        print "FAILURE!"
        break
