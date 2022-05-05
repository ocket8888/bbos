.PHONY: clean

main.pdf: *.tex *.sty chapters/*.tex
	xelatex --8bit --shell-escape main.tex

clean:
	$(RM) -r _minted-main/
	$(RM) chapters/*.aux chapters/*.aux main-blx.bib main.adx main.aux main.idx main.ldx main.log main.out main.rdx main.run.xml main.sdx main.toc main.wdx main.pdf
