PROCEEDINGS-PDF=scipy_proceedings/output/leonardo_uieda/paper.pdf
PROCEEDINGS-RST=scipy_proceedings/papers/leonardo_uieda/leonardo_uieda.rst

view-proceedings: $(PROCEEDINGS-PDF)
	evince $<

proceedings: $(PROCEEDINGS-PDF)

$(PROCEEDINGS-PDF): $(PROCEEDINGS-RST)
	cd scipy_proceedings; ./make_paper.sh papers/leonardo_uieda

$(PROCEEDINGS-RST): head.rst leonardo_uieda.rst
	cat $< > $(PROCEEDINGS-RST)
	tail -n +5 leonardo_uieda.rst >> $(PROCEEDINGS-RST)
	cp *.png scipy_proceedings/papers/leonardo_uieda

leonardo_uieda.rst: proceedings.ipynb
	./nbconvert/nbconvert.py --format rst $<
	mv proceedings.rst $@

spellcheck:
	aspell check README.md
	aspell check leonardo_uieda.rst

html: README.html

README.html: README.md
	pandoc $< -f markdown -t html -o $@

clean:
	rm -rf README.html *.bak $(PROCEEDINGS-PDF) leonardo_uieda.rst \
	leonardo_uieda_files *.png
