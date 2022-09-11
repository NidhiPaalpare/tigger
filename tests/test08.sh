#!/bin/dash

#Expected output are commented below commands
#simple test of tigger status

./tigger-init
#Initialized empty tigger repository in .tigger
echo lovely > a
echo beautiful > b 
./tigger-add a b
./tigger-commit -m message
#Committed as commit 0
echo fantastic > c
./tigger-add c
./tigger-status
#a - same as repo
#b - same as repo
#c - added to index
echo BLOOOOOOO > d 
./tigger-add d 
echo there >>b
echo rarara >> c
rm d 
./tigger-status
#a - same as repo
#b - file changed, changes not staged for commit
#c - added to index, file changed
#d = added to index, file deleted