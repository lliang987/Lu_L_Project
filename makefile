README.md: guessinggame.sh
	echo "## Lu.L Peer-graded Assignment" > README.md
	echo  >> README.md
	TZ="America/New_York" date >> README.md
	echo >> README.md
	echo "The guessinggame.sh script contains " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " rows of line" >> README.md
		
