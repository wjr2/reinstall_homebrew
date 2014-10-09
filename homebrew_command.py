#! /bin/env python

"""
homebrew_command.py -- take output of 'brew list' and create command to reinstall with BASH

Written 2014 Oct. 8 by Billy, fdf16862@opayq.com
"""

file="homebrew.txt"

f=open(file)

progs=[]
for line in f: progs.append(line.strip())

f.close()

cmd="brew install "+" ".join(progs)

print cmd

