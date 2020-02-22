#!/usr/bin/env python3
import signal
import sys

def signal_handler(sig, frame):
  sys.exit(0)

signal.signal(signal.SIGTERM, signal_handler)
signal.pause()
