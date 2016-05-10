#!/bin/bash

echo "Compiling mountainbrowser"
cd mountainbrowser/src
qmake
make -j 8
EXIT_CODE=$?
cd ../..
if [[ $EXIT_CODE -ne 0 ]]; then
	false
fi