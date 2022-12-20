#!/bin/sh
# works
# $ ~/DotDot.sh <dotscript>
# Uses Dot layout, makes a .png named after the dotscript name

dot -Tpng -O $1
