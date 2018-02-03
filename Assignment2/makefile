cc = gcc
EXE = foo
JAVAC = javac
JRE = java
TEST_OUT = test.out
EXP_OUT = expected.out
#clean run-py run-c run-java and test-java are big fat phonys

$(EXE): foo.o main.o
	$(cc) -o  $(EXE) main.o foo.o
foo.o: foo.c foo.h
	$(cc) -c foo.c
main.o: main.c foo.h
	$(cc) -c main.c
run-c: $(EXE)
	./$(EXE)
run-py: foo.py
	python foo.py
foo.class: foo.java
	$(JAVAC) foo.java
run-java: foo.class
	$(JRE) foo >test.out
test-java: $(TEST_OUT) $(EXP_OUT)
	-@if diff $(TEST_OUT) $(EXP_OUT) &> /dev/null ; then \
	echo "Passed!" ;\
	else \
	echo "Not the same!" ;\
	fi
clean:
	rm foo foo.o main.o foo.class test.out
