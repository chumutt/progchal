LISP ?= ros -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load name-generator.asd \
		--eval '(ql:quickload :name-generator)' \
		--eval '(asdf:make :name-generator)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
