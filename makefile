all: README.md

README.md:
	echo "Guessing Game Project" > README.md
	echo "\nThe date and time at which make was run:" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
  echo -n "\nNumber of lines of code contained in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md