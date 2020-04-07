# hpchellos

The following includes "Hello World" for the common HPC apps.

* Matlab
* Mathematica
* R
* Bash
* SAS
* Julia
* Python 3
* Python 2

## How do I run the examples?

Get help by running `make`

```sh
$ make
do                             Run Stata hello world.
jl                             Run Julia hello world.
m                              Run Matlab hello world.
math                           Run Mathematica hello world.
py                             Run Python 3.x hello world.
pyt                            Run Python 2.x hello world.
r                              Run R hello world.
sas                            Run Sas hello world.
sh                             Run Bash hello world.
z_run_do                       ∟ run stata [private]
z_run_jl                       ∟ run julia [private]
z_run_m                        ∟ run matlab [private]
z_run_math                     ∟ run mathematica [private]
z_run_py                       ∟ run py3 [private]
z_run_pyt                      ∟ run py2 [private]
z_run_r                        ∟ run r [private]
z_run_sas                      ∟ run sas [private]
z_run_sh                       ∟ run bash [private]
```

Ignore the `z_` tasks as they're internal tasks to the Makefile.

Run the Python 2 example

```sh
$ make pyt
🔺 Running Python 2 hello world.
hello world.
```

Run the R example

```sh
$ make r
🔺 Running R hello world.
hello world.
```

Note that do, math, m, sas will only work on an exec node.

You can run the examples manually - without the makefile as follows:

* If the app has a file ending in *.sh, like, hello.math.sh, this indicates that the language/app doesn't support the typical #! shebang line and requires a wrapper. `hello.math.sh` runs the `hello.math` mathematica script.

* `hello.py` does not require a wrapper, you can simply run `./hello.py`
