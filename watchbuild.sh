#!/bin/sh
# 
# Look for any changes in the book, then recompile when they occur.
# 
# Requires inotifywait and the normal dependencies
# 
# C-c to exit.

while true; do
    inotifywait -r -e modify . @.lysa
    make
done
