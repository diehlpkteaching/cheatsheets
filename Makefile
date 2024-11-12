sheets=$(ls *.tex)

slides: ${sheets}
	@for f in $(shell ls *.tex); do name=$$(basename $${f} .tex); latexmk -pdflatex="lualatex --shell-escape %O %S" --jobname=$${name} -pdf $${f};  done
