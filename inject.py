#!/usr/bin/python

# Source: https://rosettacode.org/wiki/Simulate_input/Keyboard
import fcntl, sys, termios
del sys.argv[0]
for c in ' '.join(sys.argv):
      fcntl.ioctl(sys.stdin, termios.TIOCSTI, c)
