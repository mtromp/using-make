# Makefile for experimenting
SHELL = /bin/bash
# To output a sum:  make add 1 3 5 7

ifeq (add,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

empty:= 
space:= $(empty) $(empty)
plus:= +
sum_args:= $(subst $(space),$(plus),$(RUN_ARGS)) 

.PHONY: add
add:
#	echo "$(four) + $(two) = $(sum) = $(shell echo "$(four)+$(two)" | bc)"
#	bar:= $(subst $(space),$(comma),$(@)) 
	echo "Sum $(sum_args) = $(shell echo "$(sum_args)" | bc)"
	
%:
	@: