all:	faq.pdf faq.html

faq.pdf:	faq.md
	pandoc -N -s \
	--toc --toc-depth=1 \
	-V geometry:margin=1.5in \
	--template=faq_latex.tex \
	faq.md -o faq.pdf

faq.html:	faq.md
	pandoc -N -s \
	--toc --toc-depth=1 \
	--css faq.css \
	faq.md -o faq.html


clean:	
	/bin/rm -fr faq.pdf faq.html

upload:
	cp faq.css ~/github/paulgribble.github.io/
	cp faq.html ~/github/paulgribble.github.io/
	cp faq.pdf ~/github/paulgribble.github.io/
