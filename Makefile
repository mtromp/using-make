# Makefile for experimenting
SHELL = /bin/bash
# can I get make to add two numbers?
four := 4
two := 2

.PHONY: add

add:
	echo "$(four) + $(two) = $(sum) = $(shell echo "$(four)+$(two)" | bc)"
	