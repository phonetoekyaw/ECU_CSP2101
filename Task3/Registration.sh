#!/bin/bash
# Author : Phone Toe Kyaw
#ECU -10502161
# Discription : Registration form

# Color Assigning 
Green='\033[32m'
Red='\033[31m'
Blue='\033[34m'


# Collecting User input and stroing them in Variables 
condition(){
    while true; do
    read -p "Enter Date Of Birth with the format of (MM-DD-YYYY): " lmao
    if [[ $lmao =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]
      then  
           break
    else
    echo -e "Please follow the input fomat >>>>>>> (MM-DD-YYYY)"
fi
done 
}
echo "################ Registration Form ###################"
read -p "Please enter your Name :" NAME
condition
read -p "Please enter your Address :" ADDRESS
read -p "Please enter your Desired Color (Red/Blue/Green):" COLOR

# checking the condition and execute
# and display user details 
if [ "$COLOR" = "Blue" ]; then
 echo -e "${Blue}Your Name = $NAME"
 echo -e "${Blue}$NAME's Date Of Birth = $lmao" 
 echo -e "${Blue}$NAME's Address = $ADDRESS"
 echo -e "${Blue}$NAME's Desired Color = $COLOR"
elif [ "$COLOR" = "Red" ]; then
 echo -e "${Red}Your Name is $NAME"
 echo -e "${Red}$NAME's Date Of Birth = $lmao"
 echo -e "${Red}$NAME's Address = $ADDRESS"
 echo -e "${Red}$NAME's Desired Color =  $COLOR"
elif [ "$COLOR" = "Green" ]; then
 echo -e "${Green}Your Name is $NAME"
 echo -e "${Green}$NAME's Date Of Birth = $lmao"
 echo -e "${Green}$NAME's Address = $ADDRESS"
 echo -e "${Green}$NAME's Desired Color = $COLOR"
else
    echo -e " Error!! Please Choose the Valid Color" 
fi
exit 0