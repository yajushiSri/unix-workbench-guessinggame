all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "The Unix Workbench Week 4 Assignment" >> README.md
	echo "Make timestamp: " "$$(date)" >> README.md
	echo "Number of Lines in guessinggame.sh:" "$$(grep -c '' guessinggame.sh)" >> README.md

clean:
	rm README.md
