#!/bin/sh
for file in `ls ../*/*.jpg`; do xxd -c1 -p $file | tr "\n" " " | sed -n -e 's/.*\( ff d9 \)\(.*\).*/\2/p' | xxd -r -p; done
