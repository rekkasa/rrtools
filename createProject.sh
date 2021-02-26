#!/bin/bash

DIR=$1
NAME=$2

WD=$DIR/$NAME

mkdir -p $WD/code $WD/data $WD/.scratch $WD/submission
echo -e "Version: 1.0\nRestoreWorkspace: Default\nSaveWorkspace: Default\nAlwaysSaveHistory: Default\nEnableCodeIndexing: Yes\nUseSpacesForTab: Yes\nNumSpacesForTab: 2\nEncoding: UTF-8\nRnwWeave: Sweave\nLaTeX: pdfLaTeX" >> $WD/$NAME.Rproj

cd $WD && git init

echo -e ".Rhistory\n.scratch" >> .gitignore

git add . && git commit -m "Initialize"
