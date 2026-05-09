PREFIX  ?= /usr/local
BINARY  := igloo

.PHONY: all build install uninstall clean

all: build

build:
	go build -o $(BINARY) .

install: build
	install -Dm755 $(BINARY) $(PREFIX)/bin/$(BINARY)

uninstall:
	rm -f $(PREFIX)/bin/$(BINARY)

clean:
	rm -f $(BINARY)
