#!/bin/bash
set -e
../grasem/run.bash imath.grasem >_.js
cat foreign.js _.js >_imath.js
node _imath.js < ex1.math
node _imath.js < ex2.math
node _imath.js < ex3.math
node _imath.js < ex4.math
node _imath.js < ex5.math
