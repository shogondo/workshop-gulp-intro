slide.html: slide.md
	pandoc -t revealjs -V revealjs-url:revealjs -V theme=white -s $^ -o $@

clean:
	rm -rf slide.html
