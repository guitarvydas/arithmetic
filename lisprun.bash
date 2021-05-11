#!/bin/bash
set -e
../grasem/run.bash lispmath.grasem >_.js
cat foreign.js _.js >_lispmath.js

node _lispmath.js < ex1.math >_temp.lisp
sbcl --script _temp.lisp

node _lispmath.js < ex2.math >_temp.lisp
sbcl --script _temp.lisp

node _lispmath.js < ex4.math >_temp.lisp
sbcl --script _temp.lisp

node _lispmath.js < ex5.math >_temp.lisp
sbcl --script _temp.lisp
