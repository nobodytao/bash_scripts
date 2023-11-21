#!/bin/bash

createfile () {
	touch $1
	ls -l $1
	echo "somecontent for file $1" > $1
	}

echo "What directory do you need to create: "
read DIRECTORY

[[ -d $DIRECTORY ]] && echo "$DIRECTORY already exists" && exit

mkdir $DIRECTORY

echo "YOU WAS HERE: $PWD"

cd $PWD/$DIRECTORY

echo "YOU ARE HERE: $PWD"

for numfile in 1 2 3
	do
	createfile "file"$numfile
	done

for names in file?
	do
	cat $names
	done

echo "Bye, dude!"

cd ..
rm -rf $DIRECTORY
