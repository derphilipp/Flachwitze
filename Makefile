.EXPORT_ALL_VARIABLES:

LANG = de_DE.UTF-8
LC_ALL = de_DE.UTF-8


sort:
	head -n +7 README.md > head.txt
	tail -n +8 README.md | sort > tail.txt
	cat head.txt tail.txt > README.md



