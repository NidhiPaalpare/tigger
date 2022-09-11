#!/bin/dash

#Expected output are commented below commands
#Initialising a tigger repository
#and adding to the repository index 

./tigger-init
#Initialised empty tigger repository in .tigger
echo "Samwise deserved better than Frodo :(" > a
echo "Go home Sam..." > b
echo "What we wish Sam would've said: SCREW YOU FRODO! YOU GO HOME >:( GIMME THE RING LOSER!!" > c
./tigger-add a b c