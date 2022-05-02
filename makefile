all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench, Coursera Course  (by Johns Hopkins University)" >> README.md
	echo "*(https://www.coursera.org/learn/unix/home/info)*" >> README.md
	echo "# Assignment Week 4: guessinggame program" >> README.md
	echo -e "This guessing game program was developed as part of an assignment for the abovementioned course. It continuously asks the user to guess the number of files in their current working directory, responding each time whether the number guessed is too high or too low until the user guesses the correct number, terminating the program after a congratulatory note :).\r\n" >> README.md
	echo "\n **Date  and time at which make was run:**" >> README.md
	date >> README.md
	echo "\n** Number of lines of code in the guessinggame.sh:**" >> README.md
	grep -c '' guessinggame.sh >> README.md

clean: 
	rm README.md


