#!/bin/bash
set -e
echo "identity grammar (ex3 fails ; all other should print the input)"
../grasem/run.bash math.grasem >_.js
cat foreign.js _.js >_math.js
node _math.js < ex1.math
node _math.js < ex2.math
node _math.js < ex3.math
node _math.js < ex4.math
node _math.js < ex5.math

echo
echo "evaluate in JS"
./jsrun.bash

echo
echo "evaluate in Python"
./pyrun.bash

echo
echo "evaluate in Lisp (SBCL)"
./lisprun.bash

