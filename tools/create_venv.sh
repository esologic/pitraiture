#! /usr/bin/env bash

# Run on a development environment, to actually be able develop the tool.

# Create a `venv` virtual environment, activate and install all required packages for development.

set -uo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${DIR}/..

python3 -m venv venv
source ./venv/bin/activate
pip install --upgrade pip
pip install -r ./requirements/dev.txt -r ./requirements/prod.txt -r ./requirements/test.txt