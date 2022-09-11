#!/bin/dash

#Expected output are commented below commands
#testing tigger-show

./tigger-init
#Initialised empty tigger repository in .tigger
echo "Over the course of six films Legolas was the THE SAME DUDE" > a 
echo "literally NOTHING about him changed - which I get is the point of being an elf, but still" > b 
echo "I almost had a heart attack when he had the tiniest bit of 
character development when he became friendly with the dwarfs" >> b
./tigger-add a b
./tigger-commit -m "Legoloser"
#Comitted as commit 0
echo "elves are so flawless, that they're boring" >> a 
./tigger-add a 
./tigger-commit -m "Gandalf > everyone"
#Committed as commit 1
echo "Aragorn is a BEAST tho - my favourite chracter" > c 
./tigger-add c 
./tigger-commit -m "Aragorn ftw"
#Committed as commit 2
echo "Also why did his eye colour change?" > b 
echo "A R A G O R N" > c 
./tigger-add b c 
./tigger-commit -m "If I were in LOTR I'd want to be a wizard or a dwarf"
#Committed as commit 3
./tigger-log
#3 If I were in LOTR I'd want to be a wizard or a dwarf
#2 Aragorn ftw
#1 Gandalf > everyone
#0 Legoloser
./tigger-show 0:a 
#Over the course of six films Legolas was the THE SAME DUDE
./tigger-show 0:c 
#./tigger-show: error: 'c' not found in commit 0
./tigger-show :b 
#Also why did his eye colour change?
./tigger-show 3:c
#A R A G O R N
./tigger-show 1:b
#literally NOTHING about him changed - which I get is the point of being an elf, but still
#I almost had a heart attack when he had the tiniest bit of 
#character development when he became friendly with the dwarfs