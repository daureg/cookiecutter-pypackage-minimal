#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

git init
git add pyproject.toml README.rst setup.cfg setup.py **/*.py
command -v poetry >/dev/null 2>&1 || { echo >&2 "poetry not there so won't do anything further"; exit 0; }
poetry install --no-root
poetry run pre-commit install
poetry run pre-commit run --all-files
poetry run make html
#git commit -m"initial commit"
