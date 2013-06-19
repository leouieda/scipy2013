show: modeling_the_earth_with_fatiando_a_terra.reveal.html
	google-chrome http://localhost:8000/modeling_the_earth_with_fatiando_a_terra.reveal.html?theme=night?transition=none &
	python -m SimpleHTTPServer 8000

slides: modeling_the_earth_with_fatiando_a_terra.reveal.html

modeling_the_earth_with_fatiando_a_terra.reveal.html: modeling_the_earth_with_fatiando_a_terra.ipynb
	./nbconvert/nbconvert.py reveal $<

clean:
	rm -rf modeling_the_earth_with_fatiando_a_terra.reveal.html \
	modeling_the_earth_with_fatiando_a_terra_files
