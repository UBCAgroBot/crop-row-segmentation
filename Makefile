.PHONY: all clean

all: build run

build:
	@echo "Building the project..."
	// note for athif, comment line 8 & 9 if you run make build again.
	python -m pip install swig
	python -m pip install poetry
	python -m venv .venv
	poetry env use python
	poetry lock
	poetry install
	poetry run pre-commit install
	mkdir models data

run:
	@echo "Running the project..."
	// stub
