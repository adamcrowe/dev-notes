# GENERAL
git status 								# get status of current branch
git status -s 							# get short status of current branch
git add <filename> 							# add file in pwd to staging area
git add -A 								# add all files in pwd to staging area 
git commit -m "<message>" 				# commit with message
git commit -a -m "<message>" 			# add all and commit with a message 
git commit -am "<message>" 				# add all and commit with a message
git commit --amend 						# combine staged changes with previous commit and replace with resulting snapshot 
										# never amend commits that have been pushed to a public repository: amended commits are
										# actually entirely new commits, and the previous commit is removed from the project history
git commit --amend -m "<message>" 		# edit previous commit message without adding staged changes to the commit
git commit --amend --no-edit 			# after staging changes, amend previous commit with changes and use previous commit message

git rm <filename>						# remove file (without the having to 'git add' the change to staging)
git rm -r <filename/directory>			# recursively remove filename/directory

git log									# show commit history for current branch
git log --pretty=format:<format> 		# show pretty log (format: "%h - %an, %ar : %s")
git log --pretty=format:"%h %s" --graph	# show pretty list of commit history
git log --follow -- <filename> 			# list commits for file
git log --follow -p -- <filename>		# list commits for file including the commit content
git log --grep="<pattern>" 				# search log using <pattern>, which can be a plain string or a regular expression

git log --graph --abbrev-commit --pretty=oneline --decorate

git fetch origin master					# fetches everything from origin that we don't have *without* merging
git pull origin master					# fetch latest changes from origin and merge with current local branch
git push origin master 					# push local commits to remote version of current branch
git branch 								# show all branches in repository
git push -d <remote> <branch>			# delete remote branch
git push <remote> --delete <branch>		# delete remote branch
git branch –d <branch> 					# delete local branch
git branch --delete <branch>			# delete local branch
git branch -D <branch>					# -D = alias for --delete --force, which deletes branch "irrespective of merged status
git branch -m <branch> 					# rename branch
git branch --contains <commit>			# get branch containing commit
git merge <branch>						# pull down remote branch and merge into local
git checkout <branch> 					# checkout branch
git checkout -b <branch> 				# create and checkout a new branch
git checkout - 							# checkout the previous branch worked on
git checkout -b <branch> master 		# create branch based on master
git checkout -b <branch>				# create branch from uncommitted changes
git checkout -- <filename>				# restore the status of a file to the last commit
git checkout <commit> hello.py 			# get old version of hello.py from commit (will apply to pwd) 
git checkout HEAD hello.py 				# get back (apply to pwd) the most recent version of hello.py
git checkout HEAD~2 					# move head back two commits 
										# (warning: detaches the head, create new branch if working from new (~2) node)
git checkout HEAD foo.py 				# discard unstaged changes to foo.py (file-only version of git reset HEAD --hard)
git checkout <branch> origin/<branch>   # creare new local branch based on a remote branch
git reset								# at commit-level: discard commits in a private branch or throw away uncommitted changes
git reset								# at file-level: unstage a file
git revert								# at commit-level: undo commits in a public branch
gitk <folder>							# show all committed changes on specified folder
gitk <filename> 						# show all committed changes on specified file
gitk --all 								# show commit history of all branches

# INTIALIZATION
git init <directory> 					# create an empty .git repository in the specified directory
git init --bare <directory> 			# initialize storage facility (not using as development environment)
git clone <url.git> 					# clone (origin) master repository created manually (on GitHub, etc.)
git remote add origin <url.git> 		# create remote (origin) master e.g. https://github.com/user/repo.git 

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

# MERGING
git merge <branch>						# pull down remote branch and merge into local

git checkout master 					# then:
git merge -X theirs dev 				# force merge of dev into master and favor dev if any conflicts

git checkout develop 					# then:
git merge -X ours master 				# force merge of master into dev and favor master if any conflicts

# SEQUENCE: REVERSE A COMMIT ON LOCAL COPY OF MASTER
# assuming you've just made an errant commit on master: 
# "back up" your commit, creating a topic branch 
git branch fix-spelling-error 			# then:
git reset --hard upstream/master 		# reset your master branch to the same state as upstream/master 
git reset --hard origin/master 			# reset your master branch to the same state as upstream/master 

# SEQUENCE: MERGE/PULL REQUESTS
git push origin master:temporary_branch # push local master to new branch (e.g. for pull request)

# REVERTING VS RESETTING
# `git revert` undoes a single commit 
# `git revert` does not "revert" back to the previous state of a project by removing all subsequent commits
# `git revert` should be used to undo changes on a public branch (e.g. `git revert -n HEAD`)

# `git reset HEAD` undoes uncommitted changes
# `git reset should be reserved for undoing changes on a private branch 
# Never use `git reset <commit>` when any snapshots after <commit> have been pushed to a public repository
# After publishing a commit, you have to assume that other developers are reliant upon it. 

git revert <commit> 	# creates and applies a new reversed/(undo changes) commit to leave previous commit in history
git revert HEAD 		# revert to before the most recent commit
git revert -n HEAD 		# revert to before the most recent commit
git reset 				# unstages all files without overwriting any changes (only use to undo local changes on a private branch)
git reset <filename> 	# remove file from staging area but leave pwd unchanged 
git reset --hard 		# reset staging area to most recent commit and overwrite/obliterate all changes to pwd
git reset <commit> 		# reset staging area to most recent commit leaving pwd alone - files can be re-committed
git reset HEAD 			# reset staging area to most recent commit leaving pwd alone - files can be re-committed  
git reset --hard HEAD 	# unstage and throw away all changes in pwd
git reset --mixed HEAD 	# unstage all changes but leave them in pwd
git clean -df 			# remove untracked files and untracked directories from pwd
git clean -xf 			# remove untracked files from the pwd as well as any files usually ignored
git clean -n 			# show which files would be removed from pwd 
git clean -f 			# execute clean (f = force check: will not remove untracked folders or files specified by .gitignore)
git clean -f <path> 	# remove untracked files, but limit the operation to the specified path

# SEQUENCE: RETURN THE WORKING DIRECTORY TO THE EXACT STATE OF THE MOST RECENT COMMIT
git reset --hard 		# reset staging area to most recent commit and *overwrite/obliterate* all changes to pwd
git clean -df 			# remove untracked files and untracked directories)

# SEQUENCE: CHERRY-PICKING A COMMIT
# <https://www.atlassian.com/git/tutorials/comparing-workflows/centralized-workflow>

git log 					# find hash of commit
git checkout <branch> 		# switch to branch to apply cherry-picked commit to
git cherry-pick <commit>	# apply cherry-picked commit to branch
							# multiples: git cherry-pick <commit1> <commit2> <commit3>

# THE REBASING PROCESS
# > Rebasing works by transferring each local commit to the updated master branch one at a time. This means that you catch merge conflicts on a commit-by-commit basis rather than resolving all of them in one massive merge commit. This keeps your commits as focused as possible and makes for a clean project history. In turn, this makes it much easier to figure out where bugs were introduced and, if necessary, to roll back changes with minimal impact on the project. 

# > If Alice and Bob are working on unrelated features, it's unlikely that the rebasing process will generate conflicts. But if it does, Git will pause the rebase at the current commit and output the following message, along with some relevant instructions: `CONFLICT (content): Merge conflict in <some-file>`

# > The great thing about Git is that anyone can resolve their own merge conflicts. In our example, Alice would simply run a `git status` to see where the problem is. Conflicted files will appear in the Unmerged paths section:
# Unmerged paths:
# (use "git reset HEAD <some-file>..." to unstage)
# (use "git add/rm <some-file>..." as appropriate to mark resolution)
#
# both modified: <some-file>

# > Then, Alice will edit the file(s) to her liking. Once she's happy with the result, she can stage the file(s) in the usual fashion and let git rebase do the rest:
# git add <some-file>
# git rebase --continue

# > And that's all there is to it. Git will move on to the next commit and repeat the process for any other commits that generate conflicts. If you get to this point and realize and you have no idea what's going on, don't panic. Just execute the following command and you'll be right back to where you started before you ran.
# git rebase --abort				# abort rebasing to start over
# git pull --rebase origin master 	# pull from master and rebase our changes at HEAD of master

# > After Alice has finished synchronizing with the central repository, she will be able to publish her changes successfully:
# git push origin master

# SEQUENCE: REBASE BRANCH
git checkout new-feature			# switch to feature branch
git rebase master 					# move new-feature to the HEAD of master
git checkout master 				# pull latest master
git merge new-feature				# fast-forward merge from master
git push origin master 				# push merged feature branch