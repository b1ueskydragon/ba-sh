#!/usr/bin/bash

#To execute
#. fetch_rebase.sh 
# TODO: Replace current to find branch

PY_B="PythonGround"
JV_B="PlayGround"
SQ_B="ScalaQuiz"
SC_B="ScalaGround"
AK_B="akka-http-auth-api"
JS_B="JavaScriptGround"
BS_B="ba-sh"
TD_B="ssh-td-transfer"
HA_B="HaskellGround"
YE_B="yearinpixel"

BRANCHES=(
${PY_B} 
${HA_B}
${JV_B} 
${SQ_B}
${AK_B}
${SC_B} 
${JS_B} 
${BS_B}
${TD_B}
${YE_B}
)

echo $LF
for branch in ${BRANCHES[@]}
do
 echo "["$branch"]:"
 if [ -d ~/$branch ]; then
  cd ~/$branch/
  git pull --rebase origin master
  git status
  git push origin master
 else 
  echo "not exists."
 fi 
 echo $LF
done

cd ~/
