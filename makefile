makedate = $(date)
numline = $(cat guessinggame.sh | wc -l)

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "### Make was run at $(value makedate) ">> README.md
	echo "### Number of lines of guessinggame.sh : $(value numline)" >> README.md

