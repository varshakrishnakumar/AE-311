all: pdf

pdf: project2.pdf AppendixB.pdf
docx: project2.docx AppendixB.docx

project2.pdf: project2.md 
	pandoc \
		--pdf-engine=C:\Users\HP\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex \
		project2.md -o project2.pdf

AppendixB.pdf: Appendices\AppenixB.md 
	pandoc \
		--pdf-engine=C:\Users\HP\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex \
		Appendices\AppenixB.md -o Appendices\AppenixB.pdf

project2.docx: project2.md
	pandoc \
		-s \
		project2.md -o project2.docx

.PHONY: clean
clean:
	${RM} project2.pdf project2.docx Appendices\AppenixB.pdf