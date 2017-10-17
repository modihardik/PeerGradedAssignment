README.md: guessinggame.sh
	touch README.md
		echo "#Title of Project:" > README.md
		echo "Bash, make, git and github" >> README.md
		echo "##Date and time at which make was run:" >> README.md
		date >> README.md
		echo "##Number of lines of code in guessinggame.sh:" >> README.md
		wc -l < guessinggame.sh >> README.md
