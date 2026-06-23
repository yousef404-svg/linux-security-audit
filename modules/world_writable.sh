#!/bin/bash

echo
echo "================================"
echo "World Writable Files Audit"
echo "================================"

find / \
  -path /proc -prune -o \
  -path /sys -prune -o \
  -path /run -prune -o \
  -type f -perm -002 -print 2>/dev/null
