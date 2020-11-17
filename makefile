all: README.md

README.md: guessinggame.sh
	touch README.md
	echo -e "The Unix Workbench Week 4 Assignment\r\n" >> README.md
	echo -e "Make timestamp: " "$$(date) \r\n" >> README.md
	echo -e "Number of Lines in guessinggame.sh:" "$$(grep -c '' guessinggame.sh) \r\n" >> README.md

clean:
	rm README.md
