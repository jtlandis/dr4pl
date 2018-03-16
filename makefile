#! /usr/bin/env bash

VERSION:=$(shell grep Version: DESCRIPTION|sed 's/Version: //')
NAME:=$(shell grep Package: DESCRIPTION|sed 's/Package: //')
PACKAGEFILE:=../$(NAME)_$(VERSION).tar.gz

all: $(PACKAGEFILE) README.md

.PHONY: all install

install:
	R -e 'devtools::install_bitbucket("dittmerlab/dr4pl")'	

localInstall:
	R -e 'devtools::install(dependencies="suggests")'

man: R/*.R 
	R -e 'devtools::document(roclets=c('rd', 'collate', 'namespace', 'vignette'))'
	touch man

README.md: README.Rmd R/*.R
	make localInstall
	R -e 'knitr::opts_chunk$set(fig.path="inst/image/");knitr::knit("README.Rmd")'

$(PACKAGEFILE): man R/*.R DESCRIPTION inst/doc
	R -e 'devtools::check(cran=TRUE);devtools::build()'
