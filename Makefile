PROCEEDINGS-PDF=scipy_proceedings/output/leonardo_uieda/paper.pdf
PROCEEDINGS-RST=scipy_proceedings/papers/leonardo_uieda/leonardo_uieda.rst

view-proceedings: $(PROCEEDINGS-PDF)
	evince $<

proceedings: $(PROCEEDINGS-PDF)

$(PROCEEDINGS-PDF): $(PROCEEDINGS-RST)
	cd scipy_proceedings; ./make_paper.sh papers/leonardo_uieda

$(PROCEEDINGS-RST): head.rst leonardo_uieda.ipynb
	cat $< > $(PROCEEDINGS-RST)
	./nbconvert/nbconvert.py --format rst leonardo_uieda.ipynb
	tail -n +13 leonardo_uieda.rst >> $(PROCEEDINGS-RST)
	rm leonardo_uieda.rst
	cp *.png scipy_proceedings/papers/leonardo_uieda

spellcheck:
	aspell check README.md

html: README.html

README.html: README.md
	pandoc $< -f markdown -t html -o $@

clean:
	rm -rf README.html *.bak $(PROCEEDINGS-PDF) $(PROCEEDINGS-RST) \
	leonardo_uieda_files *.png
