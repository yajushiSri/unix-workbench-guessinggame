all: README.md

README.md: guessinggame.sh
	touch README.md
	echo -e "The Unix Workbench Week 4 Assignment\r\n" >> README.md
	echo -e "The Guessing Game continuously asks the user to guess the number of files in the current working directory, until they guess the correct number. The user is informed if their guess is too high or too low. They are congratulated once they guess the correct number of files in the current directory.\r\n" >> README.md
	echo -e "Make timestamp: " "$$(date) \r\n" >> README.md
	echo -e "Number of Lines in guessinggame.sh:" "$$(grep -c '' guessinggame.sh) \r\n" >> README.md

clean:
	rm README.md
