#!/bin/bash
set -e
../grasem/run.bash math.grasem >_.js
cat foreign.js _.js >_math.js
node _math.js < ex1.math
node _math.js < ex2.math
node _math.js < ex3.math
node _math.js < ex4.math
node _math.js < ex5.math
