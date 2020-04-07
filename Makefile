r: run_r ## Run R hello world.
py: run_py ## Run Python 3.x hello world.
py2: run_py2 ## Run Python 2.x hello world.
sh: run_sh ## Run Bash hello world.
jl: run_jl ## Run Julia hello world.
do: run_do ## Run Stata hello world.
m: run_m ## Run Matlab hello world.
sas: run_sas ## Run Sas hello world.
math: run_math ## Run Mathematica hello world.

define log
 @echo "\033[92m$(1)\033[0m"
endef

define run
  @find . -name "*.$(1)" -exec {} \;
endef

run_r: ## run
	$(call log,Running R hello world.)
	$(call run,R)

run_py: ## run
	$(call log,Running Python 3 hello world.)
	$(call run,py)

run_py2: ## run
	$(call log,Running Python 2 hello world.)
	$(call run,py2)

run_sh: ## run
	$(call log,Running bash hello world.)
	$(call run,sh)

run_jl: ## run
	$(call log,Running Julia hello world.)
	$(call run,jl)

run_do: ## run
	$(call log,Running Stata hello world.)
	$(call run,do)

run_m: ## run
	$(call log,Running Matlab hello world.)
	$(call run,m)

run_sas: ## run
	$(call log,Running SAS hello world.)
	$(call run,sas)

run_math: ## run
	$(call log,Running Mathematica hello world.)
	$(call run,math)

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
