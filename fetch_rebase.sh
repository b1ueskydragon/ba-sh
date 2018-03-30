#!/usr/bin/bash

#1行明は使用するシェル
#To execute . fetch_rebase.sh 
#変数宣言スペース入れない

py_b="PythonGround"
echo ${py_b}":"
cd ~/${py_b}/
git fetch origin
git rebase origin/master

jv_b="PlayGround"
echo ${jv_b}":"
cd ~/${jv_b}/
git fetch origin
git rebase origin/master

sq_b="ScalaQuiz"
echo ${sq_b}":"
cd ~/${sq_b}/
git fetch origin
git rebase origin/master

cd ~/
