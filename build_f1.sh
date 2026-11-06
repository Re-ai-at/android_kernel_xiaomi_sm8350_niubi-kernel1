#!/bin/bash
cd /home/builder/f1-poweropt-bak/f1-poweropt
export PATH=/home/builder/clang+llvm-18.1.8-x86_64-linux-gnu/bin:$PATH
echo "BUILD START: $(date)" > /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log
make ARCH=arm64 LLVM=1 LLVM_IAS=1 O=out_mars clean >> /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log 2>&1
make ARCH=arm64 LLVM=1 LLVM_IAS=1 O=out_mars star_defconfig >> /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log 2>&1
make ARCH=arm64 LLVM=1 LLVM_IAS=1 O=out_mars -j12 >> /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log 2>&1
echo "BUILD_EXIT=$?" >> /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log
echo "BUILD END: $(date)" >> /home/builder/f1-poweropt-bak/f1-poweropt/build_f1.log
