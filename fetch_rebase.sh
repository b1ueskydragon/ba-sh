#!/usr/bin/bash

#1行明は使用するシェル
#To execute . fetch_rebase.sh 
#変数宣言スペース入れない

PY_B="PythonGround"
JV_B="PlayGround"
SQ_B="ScalaQuiz"

BRANCHES=(
${PY_B} 
${JV_B} 
${SQ_B} 
)

echo $LF
for branch in ${BRANCHES[@]}
do
 echo "["$branch"]:"
 cd ~/$branch/
 git fetch origin
 git rebase origin/master
 git status
 echo $LF
done

cd ~/
