#!/bin/bash
#Author : Phone Toe Kyaw
#StudentID : 10502161  


BROWN="\033[33m"
BLUE="\033[34m"
DARKGRAY='\033[1;30m'
RED="\033[31m"
PURPLE='\033[0;35m'    
CYAN='\033[0;36m'
stop='\033[0;0;39m'
YELLOW='\033[1;33m' 
GREEN="\033[32m"

lee(){
    read -p "Press Enter to Main Menu" ee
}
option1()
{   
    read -p "Please enter User Name to register: " usname
    echo -e "${RED}User name $usname is added to the database${stop}"
    lee
}
option2()
{
    read -p "Please enter User Detail: " details
	echo -e "${GREEN}User Detail" $details "added to the database${stop}"
    lee
}
option3(){
	read -p "Please input data to edit User: " details1
	echo -e "${BROWN}User data" $details1 "edited${stop}"
    lee
}
option4(){
	read -p "Please input user data to save: " details2
	echo -e "${BLUE}User data" $details2 "edited${stop}"
    lee
}
option5(){
	read -p "Please enter password to change: " details3
	echo -e "${BLUE}Password changed${stop}"
    lee
}
option6(){
    read -p "Please enter report to print: " details4
	echo -e $details4 "${YELLOW}\n report printed${stop}"
    lee
}
menu(){
    clear	
    echo -e "${PURPLE}---------------------------------------${stop}"
	echo -e "${Red}****************MAIN MENU**************${stop}"
    echo -e "${PURPLE}---------------------------------------${stop}"
	echo -e "
	${GREEN}1. Register User\n${stop}
	${PURPLE}2. Users Details\n${stop}	
	${YELLOW}3. Edit User\n${stop}
	${BLUE}4. Save User\n${stop}	
	${DARKGREY}5. Change Password\n	${stop}
	${BROWN}6. Print Report\n${stop}
	${RED}7. Exit Menu${stop}
				"
}
option(){
	local options
	read -p "Press Option (1 - 7) : " options
	case $options in
		1) option1 ;;
		2) option2 ;;
		3) option3 ;;
		4) option4 ;;
		5) option5 ;;
		6) option6 ;;
		7) exit 0;;
		*) 
	esac
}
while true
do 
    menu
    option
done