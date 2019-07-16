all:	faq.pdf faq.html

faq.pdf:	faq.md
	pandoc -N -s --toc \
	-V fontfamily=mathpazo \
	-V linestretch=1.05 \
	-V geometry:margin=1.0in \
	faq.md -o faq.pdf

faq.html:	faq.md
	pandoc -N -s --toc \
	--css faq.css \
	faq.md -o faq.html


clean:	
	/bin/rm -fr faq.pdf faq.html

upload:
	scp faq.css abby.gribblelab.org:~/gribblelab.org/
	scp faq.html abby.gribblelab.org:~/gribblelab.org/
	scp faq.pdf abby.gribblelab.org:~/gribblelab.org/
