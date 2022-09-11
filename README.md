# tigger

Tigger is a subset of the version control system git!
Assigned by UNSW in subject COMP2041, we were given the freedom to implement this in any way, however it must replicate the actions of its corresponding git controls.

## What can tigger do?

Tigger replicates the git controls:
* init - creates a repository 
```
./tigger-init
```
* add - adds file/s to index
```
./tigger-add [path-to-file/s]
```
* commit - commits a file 
```
./tigger-commit [-a] -m [message] [path-to-file/s]
```
* log - outputs the commits
```
./tigger-log
```
* rm - removes files from the current directory and/or the index
```
./tigger-rm [--force] [--cached] [path-to-file/s]
```
* show - shows the contents of a file given a specified commit
```
./tigger-show [commit number]:[file]
```
* status - shows the status of files in the current directory, the index, and the repository.
```
./tigger-status 
```

