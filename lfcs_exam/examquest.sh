#!/bin/bash

if [ ! -z "$1" ]; then
	last_question=$1
else
	last_question=1
fi

for file in $(find . -maxdepth 1 -type f -name "[1-9]*" | awk -F '\/' {'print $2'} | sort -n); do
	question="$file"
	if [ $question -ge $last_question ]; then
		echo -e "\n"
        	echo "==============================="
		echo "====== QUESTION $question: ==========="
        	echo "==============================="
		cat "$file"
		echo -e "\n\n"
        	echo "==============================="
		echo "To see the answer press any key..."
        	echo "==============================="
		read user_case
		echo -e "\n\n"
        	echo "==============================="
		echo "============ ANSWER ==========="
        	echo "==============================="
		cat "./lfcs_exam_answers/$question"
		echo -e "\n\n"
        	echo "==============================="
		echo "To see the next question press any key..."
        	echo "==============================="
		read user_case
		fi
done
