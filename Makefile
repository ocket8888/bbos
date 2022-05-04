.PHONY: clean

main.pdf: *.tex *.sty chapters/*.tex
	xelatex --8bit --shell-escape main.tex

clean:
	$(RM) -r _minted-main/
	$(RM) chapters/*.aux
	$(RM) chapters/*.aux
	$(RM) main-blx.bib
	$(RM) main.adx
	$(RM) main.aux
	$(RM) main.idx
	$(RM) main.ldx
	$(RM) main.log
	$(RM) main.out
	$(RM) main.rdx
	$(RM) main.run.xml
	$(RM) main.sdx
	$(RM) main.toc
	$(RM) main.wdx

