#!/bin/dash

#Expected output are commented below commands
#This file tests the log and commit -m functions
	#commiting multiple times 
	#commiting the same unchanged files
	#displaying then as a up-to-date log

./tigger-init
#Initialised empty tigger repository in .tigger
echo "Nevertheless, LOTR, was A LOT better than the hobbit" > a
echo "I mean come on, Bilbo Baggins was essentially useless" > b
echo "I guess the story arc the dwarves had was cool and everything" > c
echo "But let's talk about Legolas now...this topic gets me frustrated" > d
./tigger-add a b d
./tigger-commit -m "LOTR vs The Hobbit"
#Comitted as commit 0
./tigger-log
#0 LOTR vs The Hobbit
./tigger-commit -m "More like, LOTR vs The Dwarves feat. a Hobbit"
#nothing to commit
echo "He's hot I'll give him that, but other than being an OP archer, what did we REALLY learn from Legolas?" >> d
./tigger-add d
./tigger-commit -m "analysing Legolas"
#Committed as commit 1
./tigger-log
#1 analysing Legolas
#0 LOTR vs The Hobbit