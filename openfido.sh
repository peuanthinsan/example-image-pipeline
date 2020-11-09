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
mv holy-cross-15-min.png $OPENFIDO_OUTPUT
mv holy-cross-60-min.png $OPENFIDO_OUTPUT

