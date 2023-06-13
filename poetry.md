# Poetry

## When creating a new project

- [Prefer `pyproject.toml`](https://pip.pypa.io/en/stable/reference/build-system/pyproject-toml/) before `setup.py` + `requirements.txt`. 
- Make sure you are using `pip >= 21.3` which supports editable installs from `pyproject.toml`.
- Use `pycodestyle` linter from the start, easier to fix small problems than a lot later.

### Create the project using poetry

To get a head start with all dependencies and configuration in `pyproject.toml`, correct project structure, isolated dependencies and support for build and publish out of the box you can use [poetry](https://python-poetry.org/)

1. `poetry new <projectname>` or `poetry init` if you already have the directory created
    - Use `pytest==6.2`
    - Use Apache-2.0 license
    - Add `readme = "README.md"
    - Separate dev and production dependencies!
2. Remove `tests/__init__.py` - [we do not want our tests to be a package](https://docs.pytest.org/en/6.2.x/goodpractices.html)!
3. Rename `README.rst` to `README.md`
4. `poetry install` to create virtual environment with dependencies specified above
5. `poetry run pytest` to run tests in the isolated virtual environment
6. `poetry build` to create wheel
7. `poetry publish` to push wheel to pypi.

#### Python version bug workaround

There is currently a bug on OSX: if I use the system version in `pyproject.toml`, the python used will be the newest one installed, not the system one. E.g. if `python = "~3.9"` and system is 3.9.12, but I have 3.10.2 installed:

```bash
poetry install
Creating virtualenv myproject-Sco6aV2r-py3.10...
...
poetry shell
(myproject-Sco6aV2r-py3.10) ➜ python3 --version
Python 3.10.2
```

Workaround: `poetry env use`:

```bash
-> poetry env list
-> poetry env remove <name of env>
➜  myproject poetry env use /usr/local/opt/python@3.9/bin/python3
Creating virtualenv myproject-Sco6aV2r-py3.9 ...
(myproject-Sco6aV2r-py3.9) ➜ python3 --version
Python 3.9.12
```

NOTE: If I try a version other than system, poetry install will fail with an appropriate message, which is what led me to the workaround.

#### Poetry publish in GitLab CI

Below two lines will configure your project package registry as target, and make an authenticated publish to that registry

```bash
    - poetry config --local repositories.projectrepo ${CI_API_V4_URL}/projects/${CI_PROJECT_ID}/packages/pypi
    - poetry publish --repository projectrepo --username gitlab-ci-token --password $CI_JOB_TOKEN
```

#### Poetry scripts

You can add scripts to be run with `poetry run` as outlined below.

```bash
[tool.poetry.scripts]
scriptname = 'package.module:function'
```

Scripts are exported in your wheel, and will get installed on the target platform.

#### Multiple packages

In order for poetry to handle multiple packages, you need to [tell poetry about them](https://python-poetry.org/docs/pyproject/). Below is an example that uses the src project layout described below.

```yaml
[tool.poetry]
# ...
packages = [
    { include = "mypackage", from = "src"},
    { include = "anotherpackage", from = "src" },
]
```

### Project layout

We recommend _libraries_ to have the [recommended structure](https://blog.ionelmc.ro/2014/05/25/python-packaging/#the-structure) (excellent blog by Ionel Cristian Mărieș), which is also recommended by [pytest good practices](https://docs.pytest.org/en/6.2.x/goodpractices.html). Consider always using this structure.

```bash
├─ src
│  └─ packagename
│     ├─ __init__.py
│     └─ ...
├─ tests
│  └─ ...
└─ pyproject.toml
```

**Unfortunately this layout is not created by `poetry`, so you need to create the src directory manually**

Applications may use the same structure, or the one below, from [pytest good practices](https://docs.pytest.org/en/6.2.x/goodpractices.html)

```bash
mypkg/
    __init__.py
    app.py
    view.py
    tests/
        test_app.py
        test_view.py
        ...
```

### git

```bash
git init .
echo __pycache__ >> .gitignore
echo dist >> .gitignore
echo *egg-info >> .gitignore
echo poetry.lock >> .gitignore
```

#### poetry.lock

A recommendation which is aligned with [poetry docs](https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control) is to

- Always check in poetry.lock for applications, i.e. where exact versions is important for reproducability over CI, CD and deploys.
- Do not check in poetry.lock for libraries, where it is not neccessary and cause problems, e.g. [when collaborating over several environments.](https://stackoverflow.com/questions/61037557/should-i-commit-lock-file-changes-separately-what-should-i-write-for-the-commi#:~:text=For%20libraries%2C%20it%20is%20not,of%20problem%20for%20the%20team.)

### vscode

NOTE: On Mac Shift-Ctrl-p below should be read as Shift-Cmd-P!

1. Install pycodestyle and autopep8 if not installed: `python3 -m pip install -U pycodestyle autopep8`.
2. Install the VSCode extenstion Python from Microsoft if not installed, search for id `ms-python.python`
3. Tip: `pip install -e .` in your project directory (editable install) to make sure that vscode can find your python packages.
  - Or for better isolation, start vscode from `poetry shell`.
4. Shift-Ctrl-p `Select Linter`, pycodestyle
    - Lints code on each save and marks it red.
    - See below to add `pycodestyle` settings, e.g. ignore warnings for long lines
        ```json
        "python.linting.pycodestyleArgs": [
                "--ignore=E501"
            ],
        ```
5. Use Shift-Ctrl-p `Format Document` to automatically format document. Choose format `PEP8`.
   - See below to not linebreak long lines when formatting document
        ```json
        "python.formatting.autopep8Args": [
            "--max-line-length=180"
        ], 
        ```
6. Automatically add a newline to each source file to make git and gitlab diffs easy to read
    ```json
        "files.insertFinalNewline": true,
    ```
7. Automatically remove whitespace at end of lines for same reasons as #6
    ```javascript
        "files.trimTrailingWhitespace": true,
        "[markdown]": {
            // Set to false because Markdown uses double-space
            // at the end of the line to mark a line break.
            "files.trimTrailingWhitespace": false
    },
    ```

Example resulting vscode `settings.json`

```javascript
{
    "files.insertFinalNewline": true,
    "python.linting.pycodestyleArgs": [
        "--ignore=E501"
    ],
    "python.formatting.autopep8Args": [
        "--max-line-length=180"
    ],
    "python.testing.unittestEnabled": false,
    "python.testing.nosetestsEnabled": false,
    "python.testing.pytestEnabled": true,
    "python.testing.pytestArgs": [
        "."
    ],
    "python.linting.pycodestyleEnabled": true,
    "python.linting.enabled": true,
    "files.trimTrailingWhitespace": true,
    "[markdown]": {
        // Set to false because Markdown uses double-space
        // at the end of the line to mark a line break.
        "files.trimTrailingWhitespace": false
}
```
