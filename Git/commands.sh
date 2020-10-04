# INTIALIZATION
git init <directory-name> 				                # create an empty .git repository in the specified directory
git init --bare <directory-name> 		                # initialize storage facility (not using as development environment)
git clone <repo-url> 				                    # clone repository in current working directory
git remote -v                                           # list remotes and their urls for the current git project
git remote show origin                                  # display remote branches and endpoints for pulling and pushing
git remote add origin <repo-url> 	                    # create remote (origin) master e.g. https://github.com/user/repo.git
git remote add <remote-name> <repo-url>                 # add a remote connection to the repo e.g., to a coworker's repo
git remote add origin <fork-repo_url>                   # fork workflow: add remote 'origin' for pushing changes to fork of original repo
git remote add upstream <original-repo-url>             # fork workflow: add remote 'upstream' for pulling changes from original repo
git remote rm <remote-name>                             # delete a remote connection
git remote rename <old-remote-name> <new-remote-name>   # rename a remote connection
git remote prune origin                                 # remove errant tracking branches
echo .DS_Store >> .gitignore                            # create a .gitignore file and add .DS_Store as an exclusion

# CONFIG
nano ./.git/config                                      # display git configuration (remotes, branches, etc)
git config --global --edit                              # open the global configuration file in a text editor for manual editing
git config --global branch.autosetuprebase always       # always use rebase rather than git pull (git fetch && git merge)
git config --global                                     # apply global config to current repo

git config --global user.name "John Doe"                # change author/committer name globally
git config --global user.email "john@doe.org"           # change author/committer email globally

git config user.name "John Doe"                         # change author/committer name on current repo
git config user.email "john@doe.org"                    # change author/committer email on current repo

git commit --amend --author="John Doe <john@doe.org>"   # amend author/committer for very latest commit

# LOGS
git log									                # show commit history for current branch
git log --graph                                         # view log as tree
git log --oneline                                       # view log with commits compressed to one line
git log --oneline --decorate                            # view log with commit references
git log --graph --oneline --decorate --abbrev-commit    # view log as tree with commit details on one line
git log -3                                              # view last three commits
git log -n 3 --oneline                                  # view last three commits
git log --after="2020-12-31"                            # view log fter date
git log --after="yesterday"                             # view log after yesterday
git log --since="yesterday"                             # view log since yesterday
git log --since="2 weeks ago"                           # view log since two weeks ago
git log --after="2020-01-01" --before="2020-12-31"      # view log between dates
git log --since="2020-01-01" --until="2020-12-31"       # view log between dates
git log -i --author="Alice"                             # view log by author (case insensitive)
git log -i --author="Alice\|Bob"                        # view log by authors (case insensitive)
git log -i --grep="<search-term>"                       # view log by search term (case insensitive)
git log -- foo.py bar.py                                # view log by file (-- = arg is not branch name)
git log -S "<search-term>"                              # filter log by content added
git log --grep="<pattern>" 				                # search log using <pattern>, which can be a plain string or a regular expression
git log --name-status --follow <file-name>              # view log for file that has been moved or renamed
git log --diff-filter=R --find-renames                  # find files that have been renamed
git log --diff-filter=M --oneline                       # find files that have been modified
git log -p                                              # view log with commit details
git log -p <file-name>                                  # show changes for a specific file
git log --no-merges                                     # view log omitting merge commits
git log --merges                                        # view log with merge commits only
git log --pretty=format:"%cn committed %h on %cd"       # see: https://www.kernel.org/pub/software/scm/git/docs/git-log.html#_pretty_formats
git log --follow -- <file-name> 			            # list commits for file
git log --follow -p -- <file-name>		                # list commits for file including the commit content
git show <commit-hash>                                  # show the commit and its contents
git show <commit-hash> --stat                           # show files changed in the commit
git show <commit-hash>:<file-name>                      # look at a file from the commit
git shortlog                                            # view log with commits grouped by author

# WORKING AREA AND STAGING AREA
git diff                                                # show unstaged changes
git diff --staged                                       # show staged changes
git diff <file-name>                                    # show changes to file
git status 								                # get status of current branch
git status -s 							                # get short status of current branch
git add <file-name> 						            # add file in pwd to staging area
git add -A 								                # add all files in current working directory to staging area
git add . 								                # add all files in current working directory to staging area
git add -p                                              # selectively stage 'hunks' of files
git commit -m "<message>" 				                # commit with message
git commit -a -m "<message>" 			                # add all and commit with a message
git commit -am "<message>" 				                # add all and commit with a message
git commit --amend           		                    # edit previous commit message without adding staged changes to the commit
git commit --amend --no-edit 			                # combine staged changes with previous commit (keeping its message)
                                                        # important: never amend commits that have been pushed to a public repository
                                                        # amended commits are entirely new commits; the previous commit is removed from history
git rm <file-name>						                # remove file (without having to 'git add' the change to staging)
git rm -r <file-name/directory>			                # recursively remove file or directory
git mv old.php new.php					                # rename file old.php to new.php

## STASHING
git stash list                                          # show list of stashes and references
git stash save "<message>" 				                # save named changes - tracked only
git stash -u save "<message>" 			                # save named changes tracked and untracked (-u)
git stash -p                                            # selectively stash files
git stash --include-untracked                           # stash all files in working area include untracked
git stash save <stash-name-description>                 # stash file with readable reference
git stash branch <branch-name>                          # start a new branch from a stash
git checkout <stash-name> -- <file-name>                # grab single file from stash
git stash show stash@{0} 				                # show most recent stash
git stash drop stash@{0} 				                # delete most recent stash
git stash apply 						                # apply stash contents to branch and keep it in stash
git stash branch add-style stash@{1} 	                # create new branch from stash
git stash apply                                         # apply latest stash (stash@{0}) and don't remove it
git stash apply stash@{n}                               # apply stashed files at n reference and don't remove it
git stash pop                                           # apply last stash and also remove it (if no merge conflict)
git stash pop stash@{n}					                # apply stash and remove it from the stash list
git stash show stash@{n}                                # show stashed files at n reference
git stash clear                                         # clear stash
git stash drop                                          # remove latest stash without applying it
git stash drop stash@{n}                                # remove stash at n reference

# REFS + TAGS
tree .git/refs                                          # display refs in tree format (requires tree: http://macappstore.org/tree)
cat .git/HEAD                                           # display what HEAD is pointing at
git reflog                                              # display reference logs for the local repo (reflog expiration is 90 days)
git show-ref                                            # display all references in local repo along with associated commits
git show-ref --heads                                    # display refs/heads references in local repo along with associated commits
git show-ref --tags                                     # display refs/tags references in local repo along with associated commits
git tag                                                 # list tags
git show <tag-name>                                     # list tags and details
git tag --points-at <commit-hash>                       # list all tags pointing at commit
git tag <tag-name>                                      # tag the current branch
git tag -a <tag-name> -m "Annotation"                   # tag the current with annotation

# SEARCH
git grep -e "grep" --line-number --heading --break      # search files for "grep" - group results by file, print new line between file groups
git grep -e <pattern> --line-number --heading --break   # search files for <pattern> - group results by file, print new line between file groups
git grep -e <pattern> -- <file-name>                    # search within <filename> for <pattern>
git log --diff-filter=D -- <file-name>                  # find the commit hash for the deleted file
git blame <file-name>                                   # show changes to file
git blame <filename> -w -M -C                           # show changes to file
                                                        # ignore whitespace, detect moved or copied lines within a file, detect code moved or copied from other files modified in the same commit

# BRANCHES + COMMITS
git fetch                                               # download changes on origin without changing local repository
git fetch origin master					                # download changes on origin without changing local repository
git fetch upstream master					            # download changes on upstream without changing local repository
git pull                                                # (git pull = git fetch && git merge): download latest changes from origin and merges with current branch
git pull origin master					                # (git pull = git fetch && git merge): download latest changes from origin and merges with current branch
git pull upstream master					            # (git pull = git fetch && git merge): download latest changes from upstream and merges with current branch
git pull --rebase <remote>                              # download changes on remote master, merge with local branch, and replay local commits on top of master/HEAD
git pull --rebase <remote> <branch-name>                # download latest changes on remote branch, merge with local branch, replay local commits on top of master/HEAD
git branch                                              # display list of all branches in repository
git branch --list                                       # display list of branches
git branch -a                                           # list all remote branches
git branch -vv                                          # display remove branch the current branch is tracking
git branch --merged master                              # show which branches have been merged into master
git branch --no-merged master                           # show which branches have not been merged into master
git branch --contains <commit-hash>			            # get branch containing commit
git checkout -                                          # checkout the previous checked-out branch
git checkout <branch-name>                              # checkout the branch
git checkout <new-branch-name> origin/<branch-name>     # creare new  branch based on a remote branch
git checkout -- <file-name>                             # checkout the file from the latest commit (overwrites/restores file in working area)
git checkout origin/master <file-name>	                # restore the most recent merged committed version of the file
git checkout HEAD <file-name> 				            # restore the most recent committed version of file
git checkout HEAD~2 					                # checkout second-to-last commit (will detach HEAD; create branch before committing changes)
git checkout <commit-hash>                              # checkout the commit (updates staging area files and overwrites working area files)
git checkout <commit-hash> <file-name>                  # checkout the file from the commit (overwrites files in both staging and working areas)
git checkout <deleting-commit>^ <file-name>             # restore a deleted file by checking it out from the parent of the deleting commit
git checkout -b <branch-name>                           # create new branch from current HEAD and checkout the new branch
git checkout -b <new-branch> <existing-branch>          # create new branch from existing branch HEAD and checkout the new branch
git checkout -b <branch-name> master                    # create new branch based on master and then checkout the new branch
git checkout -f <branch-name>                           # checkout branch and force overwrite of any working area changes
git branch -m <old-name> <new-name>		                # rename branch
git branch -m <branch-name>                             # rename branch
git branch –d <branch-name> 					        # delete local branch
git branch --delete <branch-name>			            # delete local branch
git branch --delete --force                             # force delete branch irrespective of merged status
git branch -D <branch-name>					            # force delete branch irrespective of merged status
git push origin -d <branch-name>                        # delete remote branch
git merge <branch-name>						            # merge branch into current branch
git merge <branch-name> master                          # (git checkout branch; git merge master): merge master into branch
git merge --no-ff <branch-name>                         # merge commit (i.e., merge without fast-forward even if available)
git commit --amend                                      # combine staged changes with previous commit and prompt for amended commit message (creates new commit)
git commit --amend -m <commit-message>                  # combine staged changes with previous commit and amend message (creates new commit)
git commit --amend --no-edit                            # combine staged changes with previous commit and use previous message (creates new commit)
git cherry -v                                           # display commits that have not been pushed upstream
git push origin master 					                # push committed changes to remote master
git push <remote-name> <branch-name>                    # push committed changes to remote branch
git push -u origin master                               # push committed changes to remote master and set as tracking branch (hereafter just use: git push)
git push -u remote-name> <branch-name>                  # push committed changes to remote branch and set as tracking branch (hereafter just use: git push)
git push --all origin                                   # push all local branches to origin
git push -d <remote> <branch-name>			            # delete remote branch
git push <remote> --delete <branch-name>	            # delete remote branch

# REBASE
git checkout branch-name && git rebase master           # merge master with branch and replay branch commits on top
git rebase -i HEAD~2                                    # start interactive rebase from two commits prior to HEAD
git rebase -i HEAD~3                                    # interactively rebase the last 3 commits
git rebase --continue                                   # continue interactive rebase
git rebase --abort                                      # abort rebasing to start over

# MERGE CONFLICTS
git config rerere.enabled true                          # enable rerere (reuse recorded resolution: https://git-scm.com/book/en/v2/Git-Tools-Rerere)
git rerere diff                                         # show current state of the resolution

# UNDOING

## CLEAN
git clean -n 			                                # dry run: show which files would be deleted from the current directory
git clean -f 			                                # delete untracked files from the current directory
git clean -f <path> 	                                # delete untracked files in the specified path
git clean -xf 			                                # delete untracked files from the current directory as well as any files usually ignored
git clean -df 			                                # delete untracked files and untracked directories from the current directory

## RESET
git reset 				                                # unstage all files without overwriting any changes
git reset <file-name> 	                                # unstage the file without overwriting any change
git reset <commit-hash> 		                        # reset staging area to commit without overwriting any changes
git reset HEAD 			                                # reset staging area to most recent commit (HEAD) without overwriting any changes
git reset --mixed HEAD 	                                # unstage all files without overwriting any changes
git reset --hard 		                                # reset staging area to most recent commit (HEAD) and overwrite all changes
git reset --hard HEAD 	                                # reset staging area to most recent commit (HEAD) and overwrite all changes
git reset --hard HEAD^ 	                                # reset staging area to second most recent commit (HEAD) and overwrite all changes
git reset --hard origin/master                          # reset current branch to latest commit (HEAD) on master
git reset --soft HEAD~                                  # move HEAD to the previous commit (no files are changed in working or staging area)
git reset ORIG_HEAD                                     # undo reset (unstage all files without overwriting any changes)
git reset --merge ORIG_HEAD                             # undo a merge (reset to previous HEAD and preserve uncommitted changes

## REVERT
git revert <commit-hash> 	                            # create and applies a new reversed commit (to undo changes) leaving previous commit in history
git revert HEAD 		                                # revert to before the most recent commit (HEAD)
git revert -n HEAD 		                                # revert to before the most recent commit (HEAD)
git revert								                # at commit-level: undo commits in a public branch

# SEQUENCES

## REBASE SEQUENCE
git checkout master 				                    # switch to master
git pull origin master 			                        # download latest changes on remote master
git checkout feature_branch			                    # switch to feature_branch
git rebase -i master 				                    # apply feature_branch commits onto HEAD of local master
git checkout master 				                    # switch to master
git merge feature_branch			                    # fast-forward merge feature_branch commits onto local master
git push origin master 				                    # push merged master and feature_branch to remote master

## COLLABORATIVE FEATURE BRANCH
git fetch --all                                         # download all commits and files from origin
git fetch <remote-name>                                 # download all commits and files from remote-name
git remote add coworkers_repo <repo-url>                # create connection to coworker's repo
git fetch coworkers feature_branch                      # fetch feature_branch from coworker's repo
git checkout coworkers/feature_branch                   # checkout feature_branch from coworker's repo - (detached HEAD)
git checkout -b local_feature_branch                    # create local branch from coworker's branch - (HEAD updated to last commit)

## CHERRY-PICKING SEQUENCE

### SINGLE PICK:
git log 					                            # find hash of commit
git checkout <branch-name> 		                        # switch to branch to apply cherry-picked commit to
git cherry-pick <commit-hash> --no-commit               # apply cherry-picked commit to branch working area (don't commit yet)

### MULTIPLE PICKS:
git cherry-pick <commit1> <commitN> --no-commit         # apply multiple cherry-picked commit to branch working area (don't commit yet)

## MERGING SEQUENCE

### THEIRS:
git checkout master 					                # checkout master
git merge -X theirs dev 				                # force merge of dev into master and favor dev if any conflicts

### OURS:
git checkout develop 					                # checkout develop
git merge -X ours master 				                # force merge of master into dev and favor master if any conflicts

