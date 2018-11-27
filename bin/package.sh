#!/bin/sh

rm -Rf build dist taggedunion.egg-info
python setup.py sdist
python setup.py bdist_wheel --universal

# When done, Upload:
# Test:
#   twine upload --repository-url https://test.pypi.org/legacy/ dist/*
# Prod:
#   twine upload --repository-url https://test.pypi.org/legacy/ dist/*
rm -Rf taggedunion.egg-info
