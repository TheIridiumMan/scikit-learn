#!/bin/bash

set -e

if [[ "$DISTRIB" =~ ^conda.* ]]; then
    source activate $VIRTUALENV
elif [[ "$DISTRIB" == "ubuntu" || "$DISTRIB" == "pip-free-threaded" ]]; then
    source $VIRTUALENV/bin/activate
fi

make test-doc
