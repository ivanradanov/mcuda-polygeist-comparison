#!/bin/bash
set -x
#clang++ -Wall -g -O3 -fopenmp matrixMul.cpp -I /home/ivan/src/HIPIFY/cpucuda/include/ /home/ivan/src/HIPIFY/build/cpucuda/libcpucuda.a
#/scr/ivan/src/Polygeist/mlir-build.release/bin/clang++ -O2 --cuda-lower matrixMul.cu -resource-dir=/scr/ivan/src/Polygeist/mlir-build.release//lib/clang/15.0.0/ --cuda-path=/usr/local/cuda -I../NVIDIA_CUDA-10.2_Samples/common/inc/ --cpuify=distribute.mincut --raise-scf-to-affine -scal-rep=0 -o a.out -L/usr/local/cuda/lib64 -lcudart -lcuda -fopenmp

/scr/ivan/src/Polygeist/mlir-build.release/bin/clang++ -I/scr/ivan/src/Polygeist/mlir-build.release/projects/openmp/runtime/src/ -O2 -fopenmp matrixMul.cpp -I./cpucuda/include ./libcpucuda.a 
#/projects/openmp/runtime/src/ -resource-dir=/scr/ivan/src/Polygeist/mlir-build.release//lib/clang/15.0.0/
