cookiecutter-pypackage-minimal
==============================

An opinionated, minimal [cookiecutter](https://github.com/audreyr/cookiecutter) template for Python packages, and some guidelines for Python packaging.

Usage
-----

    pip install cookiecutter
    cookiecutter gh:daureg/cookiecutter-pypackage-minimal

Fill out the README, and - if necessary - [choose a license](https://choosealicense.com/) for the project.

Explanation
-----------

The decisions `cookiecutter-pypackage-minimal` makes should all be explained here.

### README

* **README should use reStructuredText format**
  This is the format used by most Python tools, is expected by [setuptools](https://setuptools.readthedocs.io), and can be used by [Sphinx](http://sphinx-doc.org/).
* **As few README files as possible**
  Additional README files (AUTHORS, CHANGELOG, etc) should be left to the user to create when necessary.

### LICENSE

* **MIT license by default**
  This template provides you the classic [MIT](https://choosealicense.com/licenses/mit/) licence: it lets people do almost anything they want with your project, including to make and distribute closed source versions.
  If you [choose another license](https://choosealicense.com/), you also need to update the `{{ package_name }}/setup.py` file:
  adjust the `classifiers` and `license` fields accordingly.
* **A license is a requirement**
  Nowadays, people who want to use your library/application want to make sure they can do it legally.
  If your library is a private library, you can use a private license. In the `{{ package_name }}/setup.py` file, set `license="Proprietary"`, and choose `'License :: Other/Proprietary License'` in the trove classifiers.

### [`poetry`](https://python-poetry.org/)

* **pyproject.toml should be the canonical source of package dependencies**
  There is no reason to duplicate dependency specifiers (i.e. also using a `requirements.txt` file).

### Testing

* **Uses [pytest](https://docs.pytest.org) as the default test runner**
  This can be changed easily, though pytest is a easier, more powerful test library and runner than the standard library's unittest.
* **`tests` directory should not be a package**
  The `tests` directory should not be a Python package unless you want to define some fixtures.
  But the best practices are to use [PyTest fixtures](https://docs.pytest.org/en/latest/fixture.html) which provides a better solution.
  Therefore, the `tests` directory has no `__init__.py` file.
