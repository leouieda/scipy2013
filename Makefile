PROCEEDINGS-PDF=scipy_proceedings/output/leonardo_uieda/paper.pdf
PROCEEDINGS-RST=scipy_proceedings/papers/leonardo_uieda/leonardo_uieda.rst

view-proceedings: $(PROCEEDINGS-PDF)
	evince $<

proceedings: $(PROCEEDINGS-PDF)

$(PROCEEDINGS-PDF): $(PROCEEDINGS-RST)
	cd scipy_proceedings; ./make_paper.sh papers/leonardo_uieda

$(PROCEEDINGS-RST): authors.txt leonardo_uieda.ipynb
	cat authors.txt > $(PROCEEDINGS-RST)
	./nbconvert/nbconvert.py --exclude [1] --format rst leonardo_uieda.ipynb
	cat leonardo_uieda.rst >> $(PROCEEDINGS-RST)
	rm leonardo_uieda.rst

spellcheck:
	aspell check README.md

html: README.html

README.html: README.md
	pandoc $< -f markdown -t html -o $@

clean:
	rm -rf README.html *.bak $(PROCEEDINGS-PDF) $(PROCEEDINGS-RST)
