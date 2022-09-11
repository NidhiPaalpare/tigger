#!/bin/dash

#Expected output are commented below commands
#testing tigger-status with tigger-rm commands

./tigger-init
#Initialized empty tigger repository in .tigger
echo stranger > a 
echo things > b 
echo is good > c 
./tigger-add a b c 
./tigger-commit -m "first commit"
#Comitted as commit 0 
echo i heard it broke netflix >> a 
./tigger-add a 
echo like hardcore >> a 
echo season 4 >> b
./tigger-add b 
echo its cold > c 
./tigger-status
#a - file changed, different changes staged for commit
#b - file changed, changes staged for commit
#c - file changed, changes not staged for commit
echo more > d 
echo love > e 
echo food > f 
./tigger-add d e f 
./tigger-commit -m "new"
#Committed as commit 1
./tigger-rm --cached d 
./tigger-rm --force b 
./tigger-rm e 
./tigger-rm --force --cached a 
./tigger-status 
#a - untracked
#b - deleted
#c - file changed, changes not staged for commit
#d - untracked
#e - deleted
#f - same as repo
