EXE=example
C=$(shell command -v g++-10 || command -v g++)

.PHONY: all clean

all: $(EXE)

%: %.cpp simcpp20.cpp
	$(C) -Wall -Wextra -fcoroutines $^ -o $@

clean:
	rm -f $(EXE)
