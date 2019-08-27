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
	scp faq.css abby.gribblelab.org:~/gribblelab.org/
	scp faq.html abby.gribblelab.org:~/gribblelab.org/
	scp faq.pdf abby.gribblelab.org:~/gribblelab.org/
