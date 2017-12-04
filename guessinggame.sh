echo "Please enter a number to guess how many files in the current directory"
read enter_num

## check if a non-number is entered
while [[ ! $enter_num =~ ^[0-9]+$ ]]
do
    echo "ERROR: you entered $enter_num not a number, please re-enter a number"
    read enter_num
done

## get total number of files
file_num=$(ls -L | wc -l) 

## Compare entered number with file number
while [[ $enter_num -ne $file_num ]]
do
   if [[ $enter_num -lt $file_num ]]
   then
       echo "You entered number $enter_num is to low, guess again"
       read enter_num  
    elif [[ $enter_num -gt $file_num ]]
    then
        echo "You entered number $enter_num is too high, guess gain"
        read enter_num
    fi
done

echo "Congrats! You get total file number is $enter_num"

