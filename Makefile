r: z_run_r ## Run R hello world.
py: z_run_py ## Run Python 3.x hello world.
py2: z_run_py2 ## Run Python 2.x hello world.
sh: z_run_sh ## Run Bash hello world.
jl: z_run_jl ## Run Julia hello world.
do: z_run_do ## Run Stata hello world.
m: z_run_m ## Run Matlab hello world.
sas: z_run_sas ## Run Sas hello world.
math: z_run_math ## Run Mathematica hello world.

define log
 @echo "\033[92m$(1)\033[0m"
endef

define run
  @find . -name "*.$(1)" -exec {} \;
endef

z_run_r: ## ∟ run r [private]
	$(call log,Running R hello world.)
	$(call run,R)

z_run_py: ## ∟ run py3 [private]
	$(call log,Running Python 3 hello world.)
	$(call run,py)

z_run_py2: ## ∟ run py2 [private]
	$(call log,Running Python 2 hello world.)
	$(call run,py2)

z_run_sh: ## ∟ run bash [private]
	$(call log,Running bash hello world.)
	$(call run,sh)

z_run_jl: ## ∟ run julia [private]
	$(call log,Running Julia hello world.)
	$(call run,jl)

z_run_do: ## ∟ run stata [private]
	$(call log,Running Stata hello world.)
	$(call run,do)

z_run_m: ## ∟ run matlab [private]
	$(call log,Running Matlab hello world.)
	$(call run,m)

z_run_sas: ## ∟ run sas [private]
	$(call log,Running SAS hello world.)
	$(call run,sas.sh)

z_run_math: ## ∟ run mathematica [private]
	$(call log,Running Mathematica hello world.)
	$(call run,math)

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
