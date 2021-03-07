all:	faq.html

faq.html:	faq.md
	pandoc -N -s \
	--toc --toc-depth=2 \
	--css css/faq.css \
	faq.md -o faq.html

faq.pdf:	faq.md
	pandoc -N -s \
	--toc --toc-depth=2 \
	-V geometry:margin=1.5in \
	--template=faq_latex.tex \
	faq.md -o faq.pdf

clean:	
	/bin/rm -fr faq.pdf faq.html

upload:
	cp faq.html ~/github/paulgribble.github.io/
