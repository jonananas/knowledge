# VSCode settings

# Where
- Global - Cmd-P, >Preferences: Open Settings (JSON)
- Project - project-root/.vscode/settings.json

You probably need to Cmd-P, >Reload window before it taking effect

# Newline at end of file
- Why: Get rid of "No newline at end of file" warnings in diffs etc
What: ```"files.insertFinalNewline": true```
- Where: Global
- Link: History and how on other editors: https://thoughtbot.com/blog/no-newline-at-end-of-file

# Python Linting
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

# Pytest
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
