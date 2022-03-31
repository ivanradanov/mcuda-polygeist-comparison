#!/bin/bash


DIMS="$1"
THREADS="$2"

EXES="./mcuda/a.out ./polygeist/a.out"

for EXE in $EXES; do
for DIM in $DIMS; do
    for THREAD in $THREADS; do
        echo OMP_THREAD_NUM="$THREAD" taskset -c 0-$(($THREAD-1)) numactl -N 0 -m 0 "$EXE" -wA=$DIM -wB=$DIM -hA=$DIM -hB=$DIM
    done
done
done

