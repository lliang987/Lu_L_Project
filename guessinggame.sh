## Create check function to check if enter a valid number and compare enter number with number of files
function check {
## if not enter a number
if [[ $enter_num =~ ^[0-9]+$ ]]
then
	## compare while enter number not match with file number
	while [[ $enter_num -ne $file_num ]]
	do
		if [[ $enter_num -lt $file_num ]]
		then 
			echo "You've entered number $enter_num is too low, guess again"
			read enter_num
			check
		elif [[ $enter_num -gt $file_num ]]
		then
			echo "You've entered number $enter_num is too high, guess again"
			read enter_num
			check
		fi
	done
else
	echo "ERROR: you've entered $enter_num is not a number, please re-enter a number"
	read enter_num
	check
fi
}

## script starts
echo "Please enter a number to guess how many files in current directory"
read enter_num
## get files number
file_num=$(ls -L | wc -l)
## use check function to check if enter a number match with total number of files
check
echo "Congrats! You got the right number $file_num"

