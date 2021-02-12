#! /bin/bash
function run() {
	if [ -d $1 ]
		then
			echo directory
		else
			# for shell scripts
			if [[ $1 == *.sh ]]
			then
				./$1
			fi
			
			#for C++ files
			if [[ $1 == *.cpp ]]
			then
				g++ -std=c++11 -O -g -Wall -Wextra -Wshadow -Wfloat-equal -o a.out $1 && ./a.out
				rm a.out
			fi


			# for C files
			if [[ $1 == *.c ]]
			then
				gcc -O -Wall -Wextra -Wshadow -Wfloat-equal -o a.out $1 && ./a.out
				rm a.out
			fi
			
			# for verilog files
			if [[ $1 == *.v ]]
			then
				iverilog -o a.out $1 && vvp a.out
			fi

			#for python files
			if [[ $1 == *.py ]]
			then
				python3 $1
			fi
	fi
}
