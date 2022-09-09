#!/bin/dash

#Expected output are commented below commands
#testing tigger-rm with the --force option

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
./tigger-rm --cached b
#tigger-rm: error: 'b' in index is different to both the working file and the repository
./tigger-rm --cached a #should remove a from index
./tigger-rm --cached c #should remove c from index
./tigger-rm --cached d 
#tigger-rm: error: 'd' is not in the tigger repository
./tigger-rm --force a
#tigger-rm: error: 'a' is not in the tigger repository
./tigger-rm --force --cached b #should remove be only from index
./tigger-rm --force c
#tigger-rm: error: 'c' is not in the tigger repositoryy
echo heyaaaa > e 
./tigger-add e 
./tigger-commit -m "eeeeeee"
#Committed as commit 1
echo hruuu >> e
./tigger-rm --force e #should remove e from index and cwd
