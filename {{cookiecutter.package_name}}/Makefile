SPHINXOPTS    ?=
SOURCEDIR     = docs
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	poetry run sphinx-build -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

api:
	poetry run sphinx-apidoc -M -f -o docs/source {{ cookiecutter.package_name }}

format:
	poetry run pyupgrade --py38-plus $(git ls-files **/*.py)
	poetry run reorder-python-imports --py38-plus $(git ls-files **/*.py)
	poetry run black .

lint:
	poetry run python3 -m flake8 .

types:
	poetry run mypy --strict {{ cookiecutter.package_name }}
	poetry run pytype --strict-import --check-attribute-types --check-container-types --check-parameter-types --check-variable-types -V 3.8 {{ cookiecutter.package_name }}

check:
	poetry run python3 -m pytest --cov={{ cookiecutter.package_name }} --cov-branch
	poetry run coverage html -d coverage
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	poetry run sphinx-build -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
