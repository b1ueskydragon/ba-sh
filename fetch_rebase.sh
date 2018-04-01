#!/usr/bin/bash

#To execute
#. fetch_rebase.sh 

PY_B="PythonGround"
JV_B="PlayGround"
SQ_B="ScalaQuiz"
SC_B="ScalaGround"
JS_B="JavaScriptGround"
BS_B="ba-sh"

BRANCHES=(
${PY_B} 
${JV_B} 
${SQ_B} 
${SC_B} 
${JS_B} 
${BS_B}
)

echo $LF
for branch in ${BRANCHES[@]}
do
 if [ -d ~/$branch ]; then
  echo "["$branch"]:"
  cd ~/$branch/
  git fetch origin
  git rebase origin/master
  git status
 else 
  echo "["$branch"]:" 
  echo "not exists."
 fi 
  echo $LF
done

cd ~/
