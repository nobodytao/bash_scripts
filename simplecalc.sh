#!/bin/bash
echo "Input operation: a (add), s (substract), m (multiply), d (divide): "
read OPERATION
if [[ $OPERATION != [asmd] ]]; then
	echo "Input the correct operation - a, s, m or d"
	exit
fi

export REGEX="^[0-9]+([.]?[0-9]+)?$"

echo "Input second float or integer number (default: 0; examples: 1.5 | 2 | 99.7):"
read FIRSTARG
if ! [[ $FIRSTARG =~ $REGEX ]]; then 
	echo "Not a number! This number will be 0"
	FIRSTARG=0 
fi 

echo "Input second float or integer number (default: 0; examples: 1.5 | 2 | 99.7):"
read SECONDARG
if ! [[ $SECONDARG =~ $REGEX ]]; then 
	echo "Not a number! This number will be 0"
	SECONDARG=0 
fi 


if   [ $OPERATION = 'a' ]; then
	echo "Result:"
	echo "$FIRSTARG + $SECONDARG" | bc -l
elif [ $OPERATION = 's' ]; then
	echo "Result:"
	echo "$FIRSTARG - $SECONDARG" | bc -l
elif [ $OPERATION = 'm' ]; then
	echo "Result:"
	echo "$FIRSTARG * $SECONDARG" | bc -l
elif [ $OPERATION = 'd' ]; then
	if [ $SECONDARG = 0 ]; then
	echo "Dividing by zero. Choose second arg != 0"
	else 
		echo "Result:"
		echo "$FIRSTARG/$SECONDARG" | bc -l
	fi
else 
	echo "Input the correct operation - a, s, m or d"
fi
