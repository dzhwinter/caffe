#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe test \
             --model=examples/cifar10/cifar10_quick_train_test.prototxt \
             --weights=examples/cifar10/cifar10_quick_iter_5000.caffemodel -gpu 0 -iterations 100 2>&1|tee -a cifar10_quick.test.log

# reduce learning rate by factor of 10 after 8 epochs
# $TOOLS/caffe train \
#   --solver=examples/cifar10/cifar10_quick_solver_lr1.prototxt \
#   --snapshot=examples/cifar10/cifar10_quick_iter_4000.solverstate
