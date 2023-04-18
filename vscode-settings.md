# VSCode settings

## Where

- Global - Cmd-P, >Preferences: Open Settings (JSON)
- Project - project-root/.vscode/settings.json

You probably need to Cmd-P, >Reload window before it taking effect

## Insert newline at end of file

- Why: Get rid of "No newline at end of file" warnings in diffs etc
What: ```"files.insertFinalNewline": true``` in User Settings (JSON) - or search for insertFinalNewline in User Settings.
- Where: Global
- Link: History and how on other editors: <https://thoughtbot.com/blog/no-newline-at-end-of-file>
- Link: How to set in VSCode <https://stackoverflow.com/questions/44704968/visual-studio-code-insert-newline-at-the-end-of-files>

## Python Linting

- Why: Get lint errors and warnings in editor for all python directories in project  
- Note: This is preferred to pythonpath because its platform agnostic. Pythonpath has different separators on different platforms.  
What: 

```
{
    "python.linting.enabled": true,
    "python.linting.pycodestyleEnabled": true,
    "python.linting.pycodestyleArgs": ["--ignore=E501"],
    "python.analysis.typeCheckingMode": "basic",
    "python.autoComplete.extraPaths": [
        "./<path_to_project>"
    ],
    "python.analysis.extraPaths": [
        "./<path_to_project>"
    ],
}
```

- Where: Project
- Link:

## Pytest

- Why: Run Python Tests in VSCode
What:

```
{
    "python.testing.pytestArgs": [
        "."
    ],
    "python.testing.unittestEnabled": false,
    "python.testing.nosetestsEnabled": false,
    "python.testing.pytestEnabled": true
}
```

- Where: Project
- Link: ???
