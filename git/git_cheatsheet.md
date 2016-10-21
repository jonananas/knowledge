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