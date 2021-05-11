#!/bin/bash
set -e

../grasem/run.bash pymath.grasem >_.js
cat foreign.js _.js >_pymath.js
node _pymath.js < ex1.math | cat boilerplate.py - >_temp.py
python _temp.py

node _pymath.js < ex2.math | cat boilerplate.py - >_temp.py
python _temp.py
node _pymath.js < ex4.math | cat boilerplate.py - >_temp.py
python _temp.py
node _pymath.js < ex5.math | cat boilerplate.py - >_temp.py
python _temp.py
