#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
git init
command -v poetry >/dev/null 2>&1 || { echo >&2 "poetry not there so won't do anything further"; exit 0; }
poetry install --no-root
poetry run pre-commit install
poetry run make html
