#!/bin/dash

#Expected output are commented below commands
#Testing commit -a -m - this is a forceful command to add more contents to a 
#file in the index and commit it simultaneously 

./tigger-init
#Initialised empty tigger repository in .tigger
echo "exhaustion" > a 
echo "In need of sleep" > b 
echo "MY EYES" > c 
./tigger-add a b c
./tigger-commit -m "doom"
#Committed as commit 0
echo "my brain hurts :(" >> b 
echo "so very much" >> c
./tigger-commit -a -m "useful"
#Committed as commit 1
./tigger-log 
#1 useful
#0 doom
