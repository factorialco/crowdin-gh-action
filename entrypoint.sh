#!/bin/sh

pushd $INPUT_WORKING_DIRECTORY
  crowdin -c crowdin.yml $INPUT_CROWDIN_ACTION
popd
