README.md:
	echo "Lu.L Peer-graded Assignment" > README.md
	TZ="America/New_York" date >> README.md
	echo "The guessinggame.sh script contains following number of rows" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
		
