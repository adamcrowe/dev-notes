# INTIALIZATION
git init <directory-name> 				# create an empty .git repository in the specified directory
git init --bare <directory-name> 		# initialize storage facility (not using as development environment)
git clone <git-repo-url> 				# clone repository in pwd
git remote add origin <git-repo-url> 	# create remote (origin) master e.g. https://github.com/user/repo.git
echo .DS_Store >> .gitignore            # create gitignore file and add .DS_Store as an exclusion

# LOGS
git log									# show commit history for current branch
git log --pretty=format:<format> 		# show pretty log (format: "%h - %an, %ar : %s")
git log --pretty=format:"%h %s" --graph	# show pretty list of commit history
git log --follow -- <file-name> 			# list commits for file
git log --follow -p -- <file-name>		# list commits for file including the commit content
git log --grep="<pattern>" 				# search log using <pattern>, which can be a plain string or a regular expression
git log -p <file-name>                   # show changes for a specific file
git log --graph --abbrev-commit --pretty=oneline --decorate

# WORKING AREA AND STAGING AREA
git status 								# get status of current branch
git status -s 							# get short status of current branch
git add <file-name> 						# add file in pwd to staging area
git add -A 								# add all files in pwd to staging area
git commit -m "<message>" 				# commit with message
git commit -a -m "<message>" 			# add all and commit with a message
git commit -am "<message>" 				# add all and commit with a message
git commit --amend           		    # edit previous commit message without adding staged changes to the commit
git commit --amend --no-edit 			# combine staged changes with previous commit (keeping its message) and replace with resulting snapshot
                                        # important: never amend commits that have been pushed to a public repository: amended commits are
										# actually entirely new commits, and the previous commit is removed from the project history
git rm <file-name>						# remove file (without having to 'git add' the change to staging)
git rm -r <filename/directory>			# recursively remove filename/directory
git mv old.php new.php					# rename file old.php to new.php

# STASHING
git stash save "<message>" 				# save named changes - tracked only
git stash -u save "<message>" 			# save named changes tracked and untracked (-u)
git stash list							# show stashes in stash
git stash show stash@{0} 				# show most recent stash
git stash drop stash@{0} 				# delete most recent stash
git stash apply 						# apply stash contents to branch and keep it in stash
git stash branch add-style stash@{1} 	# create new branch from stash
git stash pop 							# remove/extract/pop latest from stash and apply to branch
git stash clear 						# clear stash
git stash pop stash@{n}					# apply stash and remove it from the stash list
git stash apply stash@{n} 				# apply a stash and keep it in the stash cache

# COMMITS AND BRANCHES
git push --set-upstream origin master   # push and set upstream to origin master
git fetch origin master					# fetches everything from origin that we don't have *without* merging
git pull origin master					# fetch latest changes from origin and merge with current local branch
git push origin master 					# push local commits to remote version of current branch
git push --all origin                   # push all branches to origin
git branch 								# show all branches in repository
git push -d <remote> <branch-name>			# delete remote branch
git push <remote> --delete <branch-name>	# delete remote branch
git branch –d <branch-name> 					    # delete local branch
git branch --delete <branch-name>			# delete local branch
git branch -D <branch-name>					# -D = alias for --delete --force, which deletes branch "irrespective of merged status
git branch -m <old-name> <new-name>		# rename branch
git branch --contains <commit-hash>			# get branch containing commit
git merge <branch-name>						# pull down remote branch and merge into local
git checkout <branch-name> 					# checkout branch
git checkout -b <branch-name> 				# create and checkout a new branch
git checkout - 							# checkout the previous branch worked on
git checkout -b <branch-name> master 		# create branch based on master
git checkout -b <branch-name>				# create branch from uncommitted changes
git checkout -- <file-name>				# restore the status of a file to the last commit
git checkout <commit-hash> hello.py 			# get old version of hello.py from commit (will apply to pwd)
git checkout HEAD hello.py 				# get back (apply to pwd) the most recent version of hello.py
git checkout HEAD~2 					# move head back two commits
										# (warning: detaches the head, create new branch if working from new (~2) node)
git checkout HEAD foo.py 				# discard unstaged changes to foo.py (file-only version of git reset HEAD --hard)
git checkout <branch-name> origin/<branch-name>   # creare new local branch based on a remote branch
git checkout origin/master <file-name>	# revert file to the version on master e.g. git checkout origin/master yarn.lock
git reset								# at commit-level: discard commits in a private branch or throw away uncommitted changes
git reset <file-name>					# at file-level: unstage a file
git revert								# at commit-level: undo commits in a public branch
gitk <directory-name>							# show all committed changes on specified directory
gitk <file-name> 						# show all committed changes on specified file
gitk --all 								# show commit history of all branches
git remote prune origin                 # remove errant tracking branches
git remote -v                           # list remotes

## MERGING SEQUENCE
git merge <branch-name>					# pull down remote branch and merge into local
## theirs ----------------------------------------------------------------------------------------------------------
git checkout master 					# checkout master
git merge -X theirs dev 				# force merge of dev into master and favor dev if any conflicts
## ours ------------------------------------------------------------------------------------------------------------
git checkout develop 					# checkout develop
git merge -X ours master 				# force merge of master into dev and favor master if any conflicts
## -----------------------------------------------------------------------------------------------------------------


# UNDOING CHANGES
git revert <commit-hash> 	            # creates and applies a new reversed/(undo changes) commit to leave previous commit in history
git revert HEAD 		                # revert to before the most recent commit
git revert -n HEAD 		                # revert to before the most recent commit
git reset 				                # unstages all files without overwriting any changes (only use to undo local changes on a private branch)
git reset <file-name> 	                # remove file from staging area but leave pwd unchanged
git reset --hard 		                # reset staging area to most recent commit and overwrite/obliterate all changes to pwd
git reset <commit-hash> 		                # reset staging area to most recent commit leaving pwd alone - files can be re-committed
git reset HEAD 			                # reset staging area to most recent commit leaving pwd alone - files can be re-committed
git reset --hard HEAD 	                # unstage and throw away all changes in pwd
git reset --hard HEAD^ 	                # unstage and throw away all changes in pwd and go back to previous commit
git reset --mixed HEAD 	                # unstage all changes but leave them in pwd
git clean -df 			                # remove untracked files and untracked directories from pwd
git clean -xf 			                # remove untracked files from the pwd as well as any files usually ignored
git clean -n 			                # show which files would be removed from pwd
git clean -f 			                # execute clean (f = force check: will not remove untracked folders or files specified by .gitignore)
git clean -f <path> 	                # remove untracked files, but limit the operation to the specified path
                                        # discard both staging area and working tree changes
git reset --hard 		                # reset staging area to most recent commit and overwrite/obliterate all changes working directory
git clean -df 			                # remove untracked files and untracked directories)

# CHERRY-PICKING SEQUENCE
## single ----------------------------------------------------------------------------------------------------------
git log 					                        # find hash of commit
git checkout <branch-name> 		                    # switch to branch to apply cherry-picked commit to
git cherry-pick <commit-hash> --no-commit           # apply cherry-picked commit to branch working area (don't commit yet)
## multiple ----------------------------------------------------------------------------------------------------------
git cherry-pick <commit1> <commitN> --no-commit     # apply multiple cherry-picked commit to branch working area (don't commit yet)
## -------------------------------------------------------------------------------------------------------------------

# REBASE SEQUENCE
git checkout master 				    # switch to master
git pull origin master 			        # pull latest changes on remote master
git checkout feature_branch			    # switch to feature_branch
git rebase -i master 				    # apply feature_branch commits onto HEAD of local master
git checkout master 				    # switch to master
git merge feature_branch			    # fast-forward merge feature_branch commits onto local master
git push origin master 				    # push merged master and feature_branch to remote master
