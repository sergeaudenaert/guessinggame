README.md: guessinggame.sh
	echo "# Project Guessinggame" > README.md
	date >> README.md
	echo >> README.md
	echo "The guessinggame script contains " | tr -d '\n' >> README.md
	wc -l guessinggame.sh | grep -o '[0-9].' | tr -d '\n' >> README.md
	echo " lines of code" >> README.md
