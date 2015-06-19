#!/usr/bin/env sh

./build/tools/caffe train \
    --solver=./examples/multigpu/solver.prototxt 
