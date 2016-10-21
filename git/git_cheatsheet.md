# Git Cheatsheet

## Interactive Squash
    git rebase –i <commit id of parent, ie before “your” first commit>
    git rebase -i HEAD~2 # Will squash last two commits
    
## Squash feature branch
     git merge --squash <feature_branch>
     git commit --edit -m"$(git log --format=%B <target_branch>..<feature_branch>)"
     
## Push "un-current" branch
    git push <src>:<dst>
    git push origin master:master # Will push master branch even if your current branch is dev
    
## Delete remote branch
    git push origin --delete <branch_name>
For git earlier than 1.7.0, see [How to delete a Git branch both locally and remotely?](http://stackoverflow.com/questions/2003505/how-to-delete-a-git-branch-both-locally-and-remotely)