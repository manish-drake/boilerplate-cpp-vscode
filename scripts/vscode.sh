#!/bin/bash

git clone git@github.com:manish-drake/boilerplate-cpp-vscode.git $1
cd $1
rm -rf .git
rm build/.placeholder
code .
