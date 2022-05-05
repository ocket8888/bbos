OUTPUTS := main.pdf algebra.pdf

TEX_FLAGS := --8bit --shell-escape #--halt-on-error

.PHONY: clean all

all: $(OUTPUTS)

main.pdf: *.tex *.sty chapters/*.tex figures/* LSP/**
	xelatex $(TEX_FLAGS) main.tex

%.pdf: %/**
	echo "Building $@"
	xelatex $(TEX_FLAGS) --jobname $(basename $@) $(basename $@)/main.tex

clean:
	$(RM) -r _minted-main/
	$(RM) **.aux **.adx **.idx **.ldx **.log **.out **.rdx **.run.xml **.sdx **.toc **.wdx **.pyg **.blx-bib
	$(RM) $(OUTPUTS)
