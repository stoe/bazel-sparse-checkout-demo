#!/bin/bash

TEAM=$1

case $TEAM in
"android")
  FOLDERS="common client/android tools/android"
  ;;
"ios")
  FOLDERS="common client/ios tools/ios"
  ;;
"all")
  FOLDERS="common client tools"
  ;;
*)
  echo "please specify a valid team"
  exit 1
  ;;
esac

echo "Running 'git sparse-checkout init --cone'"
git sparse-checkout init --cone

echo "Running 'git sparse-checkout set $FOLDERS'"
git sparse-checkout set $FOLDERS
