#!/bin/bash
set -x
#clang++ -Wall -g -O3 -fopenmp matrixMul.cpp -I /home/ivan/src/HIPIFY/cpucuda/include/ /home/ivan/src/HIPIFY/build/cpucuda/libcpucuda.a
clang++ -Wall -O3 -fopenmp matrixMul.cpp -I./cpucuda/include ./libcpucuda.a
