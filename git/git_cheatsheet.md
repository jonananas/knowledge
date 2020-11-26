# Git Cheatsheet

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

	git pull origin master:master
    
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
