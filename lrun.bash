#!/bin/bash
set -e
../grasem/run.bash lmath.grasem >_.js
cat foreign.js _.js >_lmath.js
node _lmath.js < ex1.math
node _lmath.js < ex2.math
node _lmath.js < ex3.math
node _lmath.js < ex4.math
node _lmath.js < ex5.math
