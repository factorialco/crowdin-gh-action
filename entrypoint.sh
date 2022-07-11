#!/bin/bash

set -ex

INPUT_WORKING_DIRECTORY="$(env | sed -n 's/^INPUT_WORKING-DIRECTORY=\(.*\)/\1/p')"
INPUT_CROWDIN_ACTION="$(env | sed -n 's/^INPUT_CROWDIN-ACTION=\(.*\)/\1/p')"
INPUT_DRY_RUN="$(env | sed -n 's/^INPUT_DRY-RUN=\(.*\)/\1/p')"

pushd "$INPUT_WORKING_DIRECTORY"
  if [ "$INPUT_DRY_RUN" == "true" ]; then
    crowdin -c crowdin.yml "$INPUT_CROWDIN_ACTION" --dryrun
  else
    crowdin -c crowdin.yml "$INPUT_CROWDIN_ACTION"
  fi
popd
