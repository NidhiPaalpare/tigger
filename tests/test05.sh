#!/bin/dash

#Expected output are commented below commands
#removing files from JUST the current working directory 

./tigger-init
#Initialized empty tigger repository in .tigger
echo hey >a
echo there >b
echo good > c
echo lookin > d
./tigger-add a b c d
./tigger-commit -m "first commit"
#Committed as commit 0
echo teehee >>b
echo burger >>c
echo fine > d
rm d 
./tigger-add b c d #this should remove d from the index
./tigger-commit -m "deleted d" #this commit should not contain d
#Committed as commit 1
./tigger-add e 
#./tigger-add: error: can not open 'e'

