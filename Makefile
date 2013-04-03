spellcheck:
	aspell check README.md

html: README.html

README.html: README.md
	pandoc $< -f markdown -t html -o $@

clean:
	rm -rf README.html *.bak
