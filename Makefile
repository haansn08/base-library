all: Makefile.coq
	+make -f Makefile.coq all

html: Makefile.coq
	+make -f Makefile.coq html

clean: Makefile.coq
	+make -f Makefile.coq clean
	rm -f Makefile.coq

install: Makefile.coq
	+make -f Makefile.coq install

Makefile.coq: _CoqProject
	coq_makefile -f _CoqProject -o Makefile.coq

.PHONY: all html clean
