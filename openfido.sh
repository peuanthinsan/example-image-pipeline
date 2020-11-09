#!/bin/sh

# errexit: abort script at first error
set -e

echo "OPENFIDO_INPUT = $OPENFIDO_INPUT"
echo "OPENFIDO_OUTPUT = $OPENFIDO_OUTPUT"

path_to_tmp_dir=tmp

echo "Creating tmp directory"
mkdir -p $path_to_tmp_dir

echo "Copying input files to tmp directory"
cp -r $OPENFIDO_INPUT/* ./tmp

cp -r . $OPENFIDO_OUTPUT

mv $path_to_tmp_dir/* $OPENFIDO_OUTPUT  # or some but not all
