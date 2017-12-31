README.md: guessinggame.sh
	echo "Guessinggame" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md	

