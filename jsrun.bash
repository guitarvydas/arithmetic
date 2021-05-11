#!/bin/bash
set -e
../grasem/run.bash jsmath.grasem >_.js
cat foreign.js _.js >_jsmath.js
node _jsmath.js < ex0.math | cat boilerplate.js - >_temp.js
node _temp.js
node _jsmath.js < ex1.math | cat boilerplate.js - >_temp.js
node _temp.js
node _jsmath.js < ex2.math | cat boilerplate.js - >_temp.js
node _temp.js
node _jsmath.js < ex4.math | cat boilerplate.js - >_temp.js
node _temp.js
node _jsmath.js < ex5.math | cat boilerplate.js - >_temp.js
node _temp.js
