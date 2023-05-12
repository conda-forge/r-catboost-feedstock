#!/bin/bash

if [[ $target_platform =~ linux.* ]] || [[ $target_platform == win-32 ]] || [[ $target_platform == win-64 ]]; then
  export DISABLE_AUTOBREW=1
  $R CMD INSTALL --build .
elif [[ $target_platform == osx-64 ]] || [[ $target_platform == osx-arm64 ]]; then
  export DISABLE_AUTOBREW=1
  $R CMD INSTALL --build --no-staged-install .
else
  mkdir -p $PREFIX/lib/R/library/catboost
  mv * $PREFIX/lib/R/library/catboost
fi
