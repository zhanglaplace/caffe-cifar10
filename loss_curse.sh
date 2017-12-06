#########################################################################
# File Name: loss_curse.sh
# Description:
# Author: zhangfeng
# mail: lapcace@gmail.com
# Created Time: 2017年12月03日 星期日 19时52分44秒
# Last modified: 2017年12月03日 星期日 19时52分44秒
#########################################################################
#!/bin/bash
string_output=cat  $1 '| grep ''Train net output #0'' | awk ''{print $11}'''
echo $string_output
