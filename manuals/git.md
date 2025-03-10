### Git

Commands:
```
git clone <ssh/http>            -- clone project
git init                        -- create a new local repository
git init --bare                 -- create a new server repository

git branch                      -- show my local branch
git branch <branch>             -- create new branch
git branch -m <branch>          -- rename current branch
git branch -D <branch>          -- delete current branch
git branch -r                   -- show all remote branches
git branch -vv                  -- show branch with remote

git checkout -                  -- switch to previous branch
git checkout <branch>           -- switch to branch name
git checkout -b <branch>        -- create new branch and switch to it
git checkout HEAD~<number>      -- change number of commit before
git checkout -- <file/dir>      -- undo changes in local files

git commit -m "<text>"          -- commit changes with description
git commit -am "<text>"         -- and commit changes with description
git commit --amend              -- add changes to last commit
git commit --fixup HEAD         -- add commit associated to last commit

git reset <file>                -- undo git add action file (old command)
git reset --hard <commit>       -- reset branch to commit mark
git reset --hard HEAD           -- revert changes without commit
git reset --soft HEAD~1         -- revert last commit

git restore . --staged          -- undo git add action file (new command)
git restore .                   -- remove all non commited changes

git add <file/dir>              -- add file or directory to commit
git fetch                       -- check if changes on remote branches are available
git fetch -p                    -- update information about all remote branch
git pull                        -- get changes from remote branch to local branch
git stash                       -- stash work for later
git stash pop                   -- get changes from stash
git stash clear                 -- clear changes from stash

git tag <tag name>              -- create tag on current commit
git tag -d <tag name>           -- remove tag from local

git push                        -- push changes from local branch to remote branch
git push <branch> --force       -- push changes from local and force update of remote branch
git push -u origin <branch>     -- push branch to remote and set upstream
git push origin --d <branch>    -- remove remote branch
git push origin <tag>           -- push tag to remote
git push origin --d <tag>       -- remove tag from remote

git rebase <branch>             -- update branch to changes from branch
git rebase -i HEAD~<number>     -- squashing number of commit
git rebase --onto master HEAD~1 -- change root commit from current -1 to master
git merge <branch name>         -- merge changes from local branch to current branch
git diff <sourcebr> <targetbr>  -- preview changes before merging
git cherry-pick <commit SHA>    -- duplicate commit from another branch to current branch

git show                        -- show my changes
git status                      -- show status of branch
git log                         -- show list of changes
git reflog                      -- show list of local changes

git remote -v show              -- show my remote repository
git remote set-url origin <SSH> -- update origin reposietory SSH
git remote remove origin        -- remove remote origin repository

gitk                            -- show commits of current branch
gitk <branch name>              -- show commits of branch name
gitk --all                      -- show commits for whole repository
```

Examples:
```
git branch -r | grep <name>                         -- grep remote branch by name
git branch | grep 'GATOR-' | xargs git branch -D    -- remove branches started from 'GATOR-'
git branch --set-upstream-to=origin/<branch>        -- setup track a remote branch
git checkout -b integration -t origin/integration   -- create local branch which track remote branch
git remote show origin                              -- show remote branch
git log --graph --oneline --all --decorate          -- show graph tree of changes
git mv -f <file> <new name/location>                -- rename or move file with tracking
git rebase -i --autosquash master                   -- interactive rebase which squash fixup commits
```

Configuration:
```
git config --list                              -- list of configuration
git config --global user.name "<name>"         -- setup first and last name
git config --global user.email <email>         -- setup email address
git config --global push.default current       -- push the current branch to its upstream branch
git config --global init.defaultBranch <name>  -- change default branch name e.g. `main`
```

Commits prefixes:
```
init(): initial changes for new project or repository
build(): changes that affect the build system or external dependencies
ci(): changes to CI configuration files and scripts
feat(): changes affected new feature
fix(): changes affected single bug fix
refactor(): changes that neither fixes a bug nor adds a feature
style(): changes that do not affect the meaning of the code
test(): adding missing tests or correcting existing tests
docs(): changes affected documentation only
```

Git command aliases:
```
alias gk="gitk --all"
alias gs="git status -s"
alias gc="git checkout"
alias gb="git checkout -b"
alias gf="git fetch -p"
alias ga="git add ."

alias git-log="git log --graph --oneline --all --decorate"
alias git-status="git status -s ; git diff --stat HEAD | tail -n 1"
alias git-main="git checkout main ; git pull"
alias git-epic="git branch | grep epic -m1 | xargs git checkout ; git pull"
alias git-clean="git branch | egrep -v '(master|develop|SPIKE)' | xargs git branch -D ; git gc"
```
