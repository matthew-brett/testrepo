#!/bin/bash
# Test tornado in docker container
set -e
python --version
python -m tornado.test.runtests
