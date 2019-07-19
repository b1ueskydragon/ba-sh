# pbcopy and paste manually :p
git branch | grep ${UNIQUE_STR} | pbcopy
git checkout CMD+P

# oneline with xargs :D
git branch | grep ${UNIQUE_STR} | xargs -I {} git checkout {}
