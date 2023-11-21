#!/bin/bash
func1(){
echo "Number one $1"
}

func2(){
echo "Number two $1"
}

func3(){
echo "Number three $1"
}

echo "Input func number:"
read FUNCNUMBER

if [ $FUNCNUMBER -eq 1 ] || [ $FUNCNUMBER -eq 2 ] || [ $FUNCNUMBER -eq 3 ]; then
	func$FUNCNUMBER $FUNCNUMBER
else
	echo "You need 1, 2 or 3"
fi
