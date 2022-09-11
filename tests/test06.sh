#!/bin/dash

#Expected output are commented below commands
#testing tigger-rm without the --force option

./tigger-init
#Initialized empty tigger repository in .tigger
echo blue > a 
echo skies > b 
echo finally > c 
./tigger-add a b c 
./tigger-commit -m "no rain"
#Committed as commit 0
echo green >> a 
echo purple >> b
echo brown >> c 
./tigger-add b c 
echo RAINBOW > b
./tigger-rm a
#./tigger-rm: error: 'a' in the repository is different to the working file
./tigger-rm b
#./tigger-rm: error: 'b' in index is different to both the working file and the repository
./tigger-rm c
#./tigger-rm: error: 'c' has staged changes in the index
echo hi > d 
./tigger-rm d 
#tigger-rm: error: 'd' is not in the tigger repository
./tigger-rm --cached b
#tigger-rm: error: 'b' in index is different to both the working file and the repository
./tigger-rm --cached a #should remove a from index
./tigger-rm --cached c #should remove c from index
./tigger-rm --cached d #should remove d from index
#tigger-rm: error: 'd' is not in the tigger repository
