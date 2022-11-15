# ! /bin/bash
#This program lets you choose a number between 1 and 5 and do an acction depending on the number
#you choose
#Author: Edwin Sanchez
#email: sanchez797.edwin@gmail.com

regexNum='^[0-5]{1}$'

function invalidSyntax(){
    echo "Sorry, but the option isn't available. please enter an valid option"
    echo -e ""
}

echo "Good Morning $(whoami), choose with what you want to start today"
echo -e ""
echo "1. See if there's new updates availables"
echo "2. Create a new file"
echo "3. See the time"
echo "4. Open the Python's console"
echo "5. See the logs"
echo -e ""


while [[ "$u_option" != $regexNum ]]; do
    read -p "Enter an option: " u_option
    if [[ "$u_option" =~ $regexNum ]]; then
	if [[ "$u_option" == 1 ]]; then
	    sudo apt update
	    break
	elif [[ "$u_option" == 2 ]]; then
	    read -p "File's name: " f_name
	    touch "$f_name"
	    break
	elif [[ "$u_option" == 3 ]]; then
	    date
	    break
	elif [[ "$u_option" == 4 ]]; then
	    python3
	    break
	elif [[ "$u_option" == 5 ]]; then
	    sudo find /var/log/ -iname "*.log" -type f
	    break
	fi
    else
	invalidSyntax
    fi
done
