#!/bin/bash
#Phone Toe Kyaw
#ECU-10502161
num(){
    read -p "Press Enter to return Main Menu" aa
}

menu(){
    clear
	echo "--------------------------"	
	echo " MAIN MENU "
	echo "--------------------------"
	echo "1. Create folders"
	echo "2. List the directory structure of home directory"
    echo "3. List all the contents of folder"
    echo "4. Options for delete files"
	echo "5. Exit"
}


num1(){
    read -p "Name the folder you want to create : " folder
    mkdir "$folder"
    echo "************************************"
    echo $folder "File is created!"
    num
}
    
num2(){
    ls /home
    num
}

num3(){
    ls -a
    num
}

num4(){
    rm --help
    num
}


nums(){
    local Options
    read -p "choose the number you want to : " Options
    case $Options in
        1)num1;;
        2)num2;;
        3)num3;;
        4)num4;;
        5)exit 0;;
        *)
    esac
}
while true
do
    menu
    nums
done