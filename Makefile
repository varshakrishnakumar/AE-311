all: pdf

pdf: project2.pdf
docx: project2.docx

project2.pdf: project2.md 
	pandoc \
		-s \
		project2.md -o project2.pdf

project2.docx: project2.md
	pandoc \
		-s \
		project2.md -o project2.docx

.PHONY: clean
clean:
	${RM} project2.pdf project2.docx