README.md: guessinggame.sh
	touch README.md
		echo "#Title of Project:" > README.md
		echo "Bash, make, git and github <br />" >> README.md
		echo "Date and time at which make was run <br />" >> README.md
		date >> README.md
		echo "<br />Number of lines of code in guessinggame.sh <br />" >> README.md
		wc -l < guessinggame.sh >> README.md
clean:
	rm README.md
