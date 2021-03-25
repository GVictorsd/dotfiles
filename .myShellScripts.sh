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

#function google() {
#	qutebrowser google.com
#}
#
#function arch() {
#	qemu-system-x86_64 -enable-kvm -cpu host -smp 2 -boot menu=on -drive file=~/Public/Image.img -m 2G -vga virtio -display gtk,gl=on -full-screen -fsdev local,id=exp1,path=$HOME/Public/shared/,security_model=mapped -device virtio-9p-pci,fsdev=exp1,mount_tag=v_tmp
#}
