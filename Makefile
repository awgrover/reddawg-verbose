

site/obscure_score.html : src/obscure_score.html words.txt.js
	mkdir -p site
	awk '/==WORDS==/ {system("cat words.txt.js")}; /==WORDS==/,/--WORDS--/ {next}; {print}' $< > $@

words.txt.js : words.txt words2js
	./words2js $< > $@

words.txt :
	curl http://number27.org/assets/misc/words.txt > $@

.PHONY : clean
clean :
	rm words.txt.js site/obscure_score.html

.PHONY : refetch
refetch :
	rm words.txt
