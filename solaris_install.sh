#!/bin/sh

PYTHON=/usr/bin/python
PREFIX=/usr

# Build
/usr/sfw/bin/gcc -DPYTHON=\"$PYTHON\" -DPREFIX=\"$PREFIX\" -o f5vpn-login-runner f5vpn-login-runner.c

# Install
cp f5vpn-login.py $PREFIX/sbin/f5vpn-login.py
cp f5vpn-login-runner $PREFIX/bin/f5vpn-login
chmod u+s $PREFIX/bin/f5vpn-login
