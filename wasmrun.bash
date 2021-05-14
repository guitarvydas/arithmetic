#!/bin/bash
set -e
WTOOLSDIR=/Users/tarvydas/quicklisp/local-projects/wabt/build

../grasem/run.bash wasmmath.grasem >_.js

cat foreign.js _.js >_wasmmath.js
node _wasmmath.js < ex1.math >_temp.wat
${WTOOLSDIR}/wat2wasm _temp.wat -o _temp.wasm
node wasm.js

node _wasmmath.js < ex2.math >_temp.wat
${WTOOLSDIR}/wat2wasm _temp.wat -o _temp.wasm
node wasm.js

node _wasmmath.js < ex4.math >_temp.wat
${WTOOLSDIR}/wat2wasm _temp.wat -o _temp.wasm
node wasm.js

node _wasmmath.js < ex5.math >_temp.wat
${WTOOLSDIR}/wat2wasm _temp.wat -o _temp.wasm
node wasm.js

node _wasmmath.js < ex6.math >_temp.wat
${WTOOLSDIR}/wat2wasm _temp.wat -o _temp.wasm
node wasm.js
