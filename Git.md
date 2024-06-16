## git init

    Initialize the git repo.

## git branch

    List all branches
    git branch -d branch_name - deletes a branch

## git checkout

    Switch to a branch
    -b = create new branch to move to

## git log

    Logs
    --oneline = a one line of logs

## git rebase

    Gets all commits from the branch you cloned
    and then adds yours.
    --continue = to continue the rebase in case of merge conflict

### git rebase -interactive

    HEAD~#/root, interactive rebase to delete/sqush commits

## git merge

    Merges a branch.

## git stash

    Stashes commits

### git stash list

    lists stashes

### git stash pop

    pops the latest stash

### git stash show

    shows changes
    -p = full changes

### git stash apply

    Applies changes, keeps the stash in the stack

### git stash drop

    Drops a stash

## git reset

    Resets commit
    HEAD~1 = to go back 1 commit

## git revert

    Reverts the last commit
    making a new commit opposite to the last one
