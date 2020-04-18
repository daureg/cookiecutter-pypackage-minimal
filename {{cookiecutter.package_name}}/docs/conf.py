import os
import sys

sys.path.insert(0, os.path.abspath(".."))

project = "{{ cookiecutter.package_name }}"
copyright = "{% now 'local', '%Y' %}, {{ cookiecutter.author_name }}"
author = "{{ cookiecutter.author_name }}"
release = "{{ cookiecutter.package_version }}"

extensions = ["sphinx.ext.autodoc", "sphinx_autodoc_typehints", "sphinx.ext.napoleon"]
html_theme = "alabaster"
html_static_path = ["_static"]
napoleon_google_docstring = True
intersphinx_mapping = {"python": ("https://docs.python.org/3", None)}

