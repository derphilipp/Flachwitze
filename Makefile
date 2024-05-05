.EXPORT_ALL_VARIABLES:

LANG = C
LC_ALL = C

sort:
	head -n +7 README.md > head.txt
	tail -n +8 README.md | LC_ALL=C LANG=C sort > tail.txt
	cat head.txt tail.txt > README.md
	rm head.txt tail.txt

gen-fortune:
	-mkdir output
	tail -n +8 README.md > flachwitze.md
	python3 scripts/fortune.py flachwitze.md output/flachwitze
	cd output && strfile  -c % flachwitze
	rm flachwitze.md




