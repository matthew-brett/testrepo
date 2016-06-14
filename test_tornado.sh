#!/bin/bash
# Test tornado in docker container
set -e
PIP=pip$PYTHON_VERSION
PYTHON=python$PYTHON_VERSION
$PIP install -f https://nipy.bic.berkeley.edu/manylinux $($PYTHON /io/multibuild/supported_wheels.py /io/wheelhouse/*.whl)
$PYTHON -m tornado.test.runtests
