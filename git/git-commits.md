So imperative mood is a command, so instead of:
```
added newline in readme.md
renamed camelcase functions
```
It's:
```
Add newline in readme.md
Rename camelcase functions
```
Since that is how git does the automatic commits (e.g., `Merge branch 'fix/all' into 'master'`) and it also makes it easier to make shorter sentences.

It's easier to think `Applying this commit will...`:
```
Add newline in readme.md
```
You can read more here:  
https://chris.beams.io/posts/git-commit/
