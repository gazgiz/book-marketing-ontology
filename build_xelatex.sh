#!/bin/bash
xelatex main
makeindex main.nlo -s nomencl.ist -o main.nls
makeindex main
biber main
makeglossaries main
xelatex main
xelatex main
