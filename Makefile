all: pdf

pdf:
	pandoc 00-Frontmatter.md \
	       01-Basics_of_COAM.md \
	       02-Other_Design_Considerations.md \
	       -o output.pdf \
	       --toc \
	       -V geometry:margin=1in

docx:
	pandoc *.md -o output.docx --toc

html:
	pandoc *.md -o output.html --toc --standalone

clean:
	rm -f output.pdf output.docx output.html
