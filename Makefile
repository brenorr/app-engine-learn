#!make

install:
	pip install -U pip
	pip install -U setuptools
	pip install pipenv
	pipenv install --system --ignore-pipfile

install-dev:
	@pip install pipenv
	PIPENV_VENV_IN_PROJECT="enabled" pipenv install --dev --ignore-pipfile

run:
	@uvicorn main:app --reload