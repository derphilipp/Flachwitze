.EXPORT_ALL_VARIABLES:

LANG = C
LC_ALL = C

sort:
	head -n +7 README.md > head.txt
	tail -n +8 README.md | LC_ALL=C LANG=C sort > tail.txt
	cat head.txt tail.txt > README.md
	rm head.txt tail.txt



