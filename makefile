README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game Readme  " >> README.md
	echo "This is a bash scripting exercise to build a guessing game wherein the user guesses the total number of files in a directory.  " >> README.md
	echo "The script is run inside a bash shell using the command bash guessinggame.sh  " >> README.md
	echo "guessingame.sh file contains the followng lines of code:  " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "  This file was created on the following day & time:  " >> README.md
	date >> README.md
