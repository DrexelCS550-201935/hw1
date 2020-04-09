.PHONY : all
all : run-tests

.PHONY : clean
clean :
	rm -rf run-tests compiled

run-tests : run-tests.rkt tests.rkt scheme.rkt
	raco exe -o $@ $<

.PHONY : test
test : run-tests
	./run-tests
