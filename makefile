all: README.md

README.md: guessinggame.sh
	echo "**Guessing Game Project**" > README.md
	echo "\n**The date and time at which make was run:**" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
  	echo -n "\n**Number of lines of code contained in guessinggame.sh:**** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
