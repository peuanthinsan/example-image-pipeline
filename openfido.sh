#!/bin/bash

# nounset: undefined variable outputs error message, and forces an exit
set -u
# errexit: abort script at first error
set -e
# print command to stdout before executing it:
set -x

ls $OPENFIDO_INPUT > $OPENFIDO_OUTPUT/inputfiles.txt

echo "Copying input files directory"
ls .
cp -r . $OPENFIDO_OUTPUT

