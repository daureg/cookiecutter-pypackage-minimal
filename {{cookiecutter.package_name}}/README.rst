{{ cookiecutter.package_name }}
{{ cookiecutter.package_name|count * "=" }}

{{ cookiecutter.package_description }}

Usage
-----

Run with:

.. code:: bash

    {{ cookiecutter.package_name }}

Installation
------------

Install `poetry <https://python-poetry.org/docs/>`_:

.. code:: bash

    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

And get the code and dependencies:

.. code:: bash

    git clone git@github.bus.zalan.do:glefalher/{{ cookiecutter.package_name }}.git
    cd {{ cookiecutter.package_name }}
    poetry install --no-dev

To run it in the poetry virtual env environment:

.. code:: bash

    poetry run {{ cookiecutter.package_name }}

To install it system-wide:

.. code:: bash

    poetry build
    pip install dist/{{ cookiecutter.package_name  }}.whl

Contributing
------------

.. code:: bash

    poetry install --no-root
    poetry run pre-commit install && poetry run pre-commit install


Before submitting a pull request, ensure that your changes do not break
the build:

* Lint the source code with `flake8 <http://flake8.pycqa.org/en/latest/>`_

.. code:: bash

    make lint

*  Format the source code with `black <https://black.readthedocs.io/en/stable/>`_

.. code:: bash

    make format

*  Check types with `mypy <http://mypy-lang.org/>`_ and `pytype <https://google.github.io/pytype/>`_

.. code:: bash

    make types

*  Run unit tests (it create a coverage report in ``coverage/index.html``)

.. code:: bash

    make check
