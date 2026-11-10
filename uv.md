# UV

- [Introduction](https://docs.astral.sh/uv/)

- [Prefer `pyproject.toml`](https://pip.pypa.io/en/stable/reference/build-system/pyproject-toml/) before `setup.py` + `requirements.txt`.


## Cmds

```bash
# Add simpleaudio as dependency
uv add simpleaudio

# Add pytest and coverage as dev dependencies
uv add --dev pytest pytest-cov

# install dependencies
uv sync

# create new project
uv init my-project
uv init --package mypkg # To create package
uv init -h

# Build
uv build --wheel

# Publish
uv publish

# inspect system and uv installed python versions
uv python list

# Install uv specific python version
uv python install 3.12

# Select (Pin) specific python version
uv python pin 3.10

# Dependency list
uv pip list

# Dependency tree view
uv tree --depth 4
```

