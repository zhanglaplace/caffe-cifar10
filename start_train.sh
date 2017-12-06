#########################################################################
# File Name: start_train.sh
# Description:
# Author: zhangfeng
# mail: lapcace@gmail.com
# Created Time: 2017年12月03日 星期日 18时14分59秒
# Last modified: 2017年12月03日 星期日 18时14分59秒
#########################################################################
#!/bin/bash
set -e
if [ ! $1 ]; then
    echo "you must choose a network "
else
    echo "the network you choose is $1"
fi
cd $1
../../../../../build/tools/caffe train --solver=solver.prototxt --gpu=0
read -n 1 -p "press any key to continue"
