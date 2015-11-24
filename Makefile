slide.html: slide.md
	pandoc -t revealjs -V revealjs-url:revealjs -V theme=white -V center:false -V slideNumber:true -s $^ -o $@

publish: slide.html
	mkdir -p publish
	cp slide.html publish/index.html
	cp -r revealjs publish
	cp -r assets publish
	cd publish && git init && git checkout -b gh-pages && git add . && git commit -m 'publish' && git remote add origin git@github.com:shoutakenaka/workshop-gulp-intro.git && git push origin gh-pages --force

clean:
	rm -rf slide.html publish
