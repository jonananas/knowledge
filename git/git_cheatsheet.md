# Git Cheatsheet

## Setup git

```bash
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
# Remove local branches that has been removed on remote
git config --global fetch.prune true
```

## Prune tracking branches

```bash
git fetch origin --prune
git --dry-run fetch origin --prune
```

## Change diff algorithm to histogram

See [How different are different diff algorithms in Git?
](https://link.springer.com/article/10.1007/s10664-019-09772-z) for reasons.

`git config --global diff.algorithm histogram`

or once in as merge:

`git merge --strategy-option=diff-algorithm=histogram <branch>`

There is also [](https://medium.com/the-scale-factory/configure-git-to-merge-using-ort-92fc0d450169) that suggests

`git config --global pull.twohead ort`

## Rewrite email in history

```bash
git config --global alias.change-commits '!'"f() { VAR=\$1; OLD=\$2; NEW=\$3; shift 3; git filter-branch --env-filter \"if [[ \\\"\$\`echo \$VAR\`\\\" = '\$OLD' ]]; then export \$VAR='\$NEW'; fi\" \$@; }; f"
# Below changesn last 10 commits, it's fine doing <hash>.. instead to change all commits from hash
git change-commits GIT_AUTHOR_EMAIL "old@email.com" "new@email.com" HEAD~10..HEAD
```

## Interactive Squash

    git rebase –i <commit id of parent, ie before “your” first commit>
    git rebase -i HEAD~2 # Will squash last two commits

## Squash feature branch

     git merge --squash <feature_branch>
     git commit --edit -m"$(git log --format=%B <target_branch>..<feature_branch>)"

### Example

    git merge --squash dev
    git commit --edit -m"$(git log --format=%B master..dev)"

## Push branch other than current

    git push <src>:<dst>
    git push origin master:master # Will push master branch even if your current branch is dev

## Pull branch other than current

While on dev, cmd below will pull master to master

    git fetch origin master:master

## Delete remote branch

    git push origin --delete <branch_name>
For git earlier than 1.7.0, see [How to delete a Git branch both locally and remotely?](http://stackoverflow.com/questions/2003505/how-to-delete-a-git-branch-both-locally-and-remotely)

## Show all editors of current directory

NOTE: Does not show editors of each file in directory or subdirectories.

    git log --follow --pretty=format:"%ae" . |sort|uniq

## Rename file, for example when changing case when inorecase=true

    git mv <from> <to>

## Patching

### Create patch from diff

    git diff -p -w > /tmp/source.patch

### Apply patch

    git apply /tmp/source-jar.patch

### Apply patch on cygwin using git for windows

    git apply `cygpath -w /tmp/source.patch`

## Using git outside git

Diff:ing with git: ```git diff --no-index <file1> <file2>```
