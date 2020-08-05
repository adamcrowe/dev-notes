# GIT
* Git is like a key value store
    * Key = Hash of the data
    * Value = The data
* The key is used to retrieve the data

## .git
* All git repository information is stored in the project's `.git` directory (created using `git init`)

## REMOTES
* A remote name as a convenient bookmark or shortcut alias for a git repository url
* When you clone a repository with `git clone`, it automatically creates a remote connection called `origin` pointing back to the cloned repository
    * This provides an easy way to pull changes or publish local commits and is also why most git projects call their central repository `origin`
* In addition to `origin`, it's often convenient to have a connection to your teammates' repositories (`git remote add john http://dev.example.com/john.git`)
    * Having access to individual developers’ repos makes it possible to collaborate outside of the central repository e.g., small team working on a large project
* Once configured, the remote name can be passed as an argument to other Git commands to communicate with the remote repo (`git push <remote-name> <branch-name>`)
* In forked workflows, the `upstream` repository is the base repository you created a fork from (this isn’t set up by default so you need to set it up manually)
    * By adding an `upstream` remote, you can pull down changes that have been added to the original repository after you forked it
    * `git remote add upstream https://github.com/ORIG_OWNER/REPO.git`

## REFS/REFERENCES
* See: <https://www.atlassian.com/git/tutorials/refs-and-the-reflog>
* Refs
    * A ref is an a user-friendly alias for a commit hash; refs are stored as normal text files in the .git/refs directory
        * `tree .git/refs`
        * `cat .git/refs/heads/master`
            * The heads directory lists all local branches; each branch is a branch-named text file; inside each file is the commit hash that points to the tip of the branch
            * To change the location of the master branch, git changes the contents of the refs/heads/master file; to create a new branch, git writes a commit hash to a new file
            * The remotes directory lists all remote repositories that you created with git remote as separate subdirectories; the files inside contain text files of commit hashes
            * The tags directory works the exact same way
    * `git show feature_branch` resolves to `git show refs/heads/feature_branch`
* Commit
    * Points to a commit via its unique ID (SHA-1 hash)
        * `git show <commit-hash>`
        * `git rev-parse master` - show hash of commit pointed to by master
* HEAD
    * Point to the current branch
        * Can also point to a commit (detached HEAD state)
    * Moves to latest commit whenever a new commit is made in the active branch
    * Moves to latest commit in the branch whenever a branch is checked out
    * HEAD is detached after having checked out a commit or tag (instead of a branch)
        * Always create a new branch before adding commits in a detached HEAD state
            * `git checkout -b <temp-branch-name> <existing-commit-hash>`
        * To recover a dangling commit saved when in detached state:
            * `git branch <temp-branch-name> <dangling-commit-hash>`
            * Dangling commits (those not pointing to a branch) will be garbage collected
* Branches
    * Points to the current/active branch
    * Moves with every commit to the repository
* Tags and Annotated Tags
    * Point to a commit
        * Tag: `git tag my-first-commit`
        * Annotated Tag: `git tag -a v1.0 -m 'Version 1.0'`
    * A tag is never decoupled from the commit it points to

### REFLOG
* The `git reflog` is a chronological history of everything you’ve done in your local repo; you can use the reflog to retrieve dangling commits

## MERGING
See: <https://www.atlassian.com/git/tutorials/merging-vs-rebasing>

### FAST-FORWARD MERGE
* Fast-forward happens when there are no commits on the base/master branch that occurred after the feature branch was created from master
    * In this case, when merging the feature branch, the HEAD of master is moved (fast-forwarded) to the HEAD of (the merged) feature
    * The problem with fast-forward merges is that the unique history of the feature branch is lost when it is merged into master
    * `git merge --no-ff` will prevent fast-forwarding and force a merge commit (and thus preserve the feature branch history)
* When master and branch have diverged, a fast-forward merge can be achieved using an interactive rebase: `git rebase -i origin master`

### 3-WAY MERGE COMMIT
* Scenario: You're merging a feature branch into the master branch but master has been updated with new commits in the meantime...
    * Visualization: <https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging>
    * Because the latest commit on master isn't a direct ancestor of the feature branch, Git must a create a 3-way merge:
        * Git uses the latest commits of both branches as two snapshots and the one common ancestor commit of the both...
        * Git then creates a new snapshot resulting from this 3-way merge and creates a new commit that points to it
        * This 3-way merge commit is referred to as a 'merge commit' and is special because it has more than one parent

### FAST-FORWARD OR MERGE COMMIT
* Use fast-forward merges (facilitated through rebasing) for small features or bug fixes
* Use 3-way merges for larger features where the merge commit serves as a symbolic joining

### MERGE CONFLICT
* Visual conflict indicators: Generally the content before the ======= marker is the receiving branch and the part after is the merging branch
* Consider using Git RERERE (REUSE RECORDED RESOLUTION): `git config rerere.enabled true --global` (optional global flag for all projects)

#### MERGE CONFLICTS DURING REBASE
* `git rebase -i origin master`: update local feature branch with upstream changes on master
* Merge conflict!
* `git status`: to see where the problem is
* Fix <some-file>
* `git add <some-file>`
* `git rebase --continue`: git will move on to the next commit and repeat the process for any other commits that generate conflicts
* `git push origin <feature-branch>|<master>`: push to a feature-branch for pull request or perform fast-forward merge into master

## FIXING MISTAKES

### CHECKOUT
* `git checkout <file-name|branch-name>` restores working tree files or switches branches
    * (if no arguments are passed to `git checkout` it assumed you meant to use `HEAD`)
    * When checking out a branch (`git checkout <branch-name>`)...
        * HEAD points to the checked out branch
        * Commit snapshot is copied to the staging area
        * Branch contents (staged and unstaged changes) are copied to the working area
    * When checking out a file (`git checkout -- <file-name>`)...
        * The working area copy of the file is overwritten by the staging area (last committed) copy of the file
        * Git overwrites without warning
    * When checking out a commit (`git checkout <commit-hash>`)...
        * The staging area is updated to match the commit
        * The working area is updated to match the staging area
        * Git overwrites without warning
    * When checking out a file from a commit (`git checkout <commit-hash> <file-name>`)...
        * The file is copied to both the working area and staging area
        * Git overwrites without warning
* Restore a deleted file: `git checkout <deleting-commit>^ <file-name>`
    * Checkout the file from the parent of the deleting-commit

### CLEAN
* `git clean` will clear untracked files from the working area (cannot be undone)
* `git clean --dry-run` will show what files would be cleared from working area
* `git clean -d --dry-run` will show what files and directories would be cleared from working area
* `git clean -d -f` will clear untracked files and directories from the working area

### RESET VS REVERT
* Revert should be used to undo changes on a __public__ branch; revert is for undoing __committed__ changes
* Reset should be reserved for undoing changes on a __private__ branch; reset is for undoing __uncommitted__ changes

### RESET
* Reset should be reserved for undoing changes on a __private__ branch
* Reset is a simple way to undo changes that __have not__ been shared with anyone else
* Reset changes history so use with caution (never push changed history to a shared repository)
    * Always use revert when changes you want to undo have already been pushed to origin
* For commits (`git reset --<option-flag> HEAD~` or `git reset --mixed <commit-hash> -- <file-name>`)
    * Moves the HEAD pointer and optionally modifies files (only --soft option prevents modification)
* For files (`git reset <file-name>`):
    * Does not move the HEAD pointer and will overwrite the file in staging area with the file from HEAD
        * `git reset` does not allow optional flags but does default to `--mixed`

* Options (3): `--soft`, `--mixed` (default), and `--hard`
    * `git reset --soft HEAD~`: moves HEAD to the previous commit (no files are changed in working or staging area)
    * `git reset --mixed HEAD~` or `git reset HEAD~`: moves HEAD to the previous commit and copies files at that commit into staging area
        * Use this command to unstage files in the staging area
     * `git reset --hard HEAD~`: moves HEAD to the previous commit and copies files at that commit into staging and into the working areas
        * This cannot be undone. Use this command to delete all changes.

* Undoing a reset...
    * Git keeps the previous value of HEAD in a variable called `ORIG_HEAD`
    * To undo a reset: `git reset ORIG_HEAD`

* The difference between reset and checkout is:
    * `git checkout` moves the HEAD pointer but the branch will remain in place
    * `git reset` moves both the HEAD pointer and the branch reference

### REVERT
* Reverting undoes a commit by creating a inverse commit
* Revert is the safe reset because it does not rewrite history
* Revert should be used to undo changes on a __public__ branch
    * `git revert <commit-hash>` creates an undo commit to reverse all changes to the previous commit
    * `git revert HEAD~2` reverts the second-to-last commit and creates a new inverted commit at HEAD

### CHERRY PICK
* See: <https://www.atlassian.com/git/tutorials/cherry-pick>
* Cherry picking is the act of picking (copying) a commit (by reference) from one branch and applying it to another
    * For example, you've accidently made a commit to the wrong branch; you can switch to the correct branch and cherry-pick the commit to copy it there
        * `git checkout <incorrect-branch> && git log` - find hash of commit in the incorrect branch
        * `git checkout <correct-branch>` - switch to branch to apply cherry-picked commit to
        * `git cherry-pick <commit-hash> --no-commit` - apply cherry-picked commit to branch working area (don't commit yet)

### BLAME AND BISECT
* Use `git blame` to find out who the last persons to touch the file
    * `git blame <filename> -w -M -C` -- ignore whitespace, detect moved or copied lines within a file, detect code moved or copied from other files modified in the commit
* Use `git bisect` to search through a commit history to find which commit introduced a bug
    * start the bisect: `git bisect start <bad-commit-hash> <good-commit-hash>`
    * git will step backward from the <bad-commit-hash>
    * test: open or cat the relevant file...
    * if the file contains the bad change mark the commit with `git bisect bad`
    * if the file does not contain the bad change mark the commit with `git bisect good`
    * when the commit is marked with `git bisect good`, bisect will stop and report the first bad commit

## AMEND AND REBASE

### AMEND
* Amend makes minor changes to the last commit (e.g., forgetting to include a file)
    * The original commit is replaced by the amended commit and will be garbage collected
    * `git commit -m "Add blog post about python` -- but forgot to include file!
    * `git add posts/python.txt` -- add file to staging
    * `git commit --amend` -- amend the last commit

### REBASE
* See: <https://www.atlassian.com/git/tutorials/merging-vs-rebasing>
* Rebase = “Add my changes on top of the work the team has already done.”
* The Golden Rule of Rebasing: Never rebase on public branches. Only rebase private feature branches.
    * If you’re collaborating with other developers via the same feature branch, that branch is public, and you’re not allowed to re-write its history.
* It's usually better to rebase instead of generating a superfluous merge commit; rebasing works by transferring each local commit to the updated master branch one at a time
* This means that you catch merge conflicts on a commit-by-commit basis rather than resolving all of them in one massive merge commit; this makes for a clean project history
* Tecnically, to rebase is to give a commit a new parent commit i.e., a new base commit. Rebasing is used to clean up history before pushing to a remote.
    * `git checkout feature_branch && git rebase master`: the parent of the feature branch commit is updated to be the last commit on master
        * (this resembles a fast-forward merge but rebasing requires the feature branch commit is updated which doesn't happen with a ff)
    * otherwise: `git checkout feature_branch && git merge master`: a (3-way) merge commit is created which clutters up the history
* The power of rebasing is that we can edit/remove/combine/re-order/insert commits before they are 'replayed' on top of the new HEAD
    * Interactive rebase: `git rebase -i <commit-to-fix>^`: start interactive rebase from the parent of the target commit
    * Rebase options:
        * `pick`: keep this commit
        * `reword`: keep this commit, but change the commit message
        * `edit`: keep this commit, but stop to edit more than the message
        * `squash`: combine this commit with the previous one and stop to edit the message
        * `fixup`: combine this commit with the previous one and keep the previous message
        * `exec`: run a command (e.g., 'test') on this line after picking the previous commit
        * `drop`: remove the commit
    * Rebase can be used to run a command after every commit is applied:
        * `git rebase -i -exec "run-tests" <commit-hash>`
        * rebase will stop if the command fails providing an opportunity to fix the current commit
    * Rebase can be used to split commits into multiple commits:
        * Start an interactive rebase
        * Mark the commit with an `edit`
        * `git reset HEAD^`
        * `git add` (add to logical grouping)
        * `git commit -m '...'`
        * repeat until working area is clean
        * `git rebase --continue`
* Before you rebase...
    * Make a backup copy of the current branch that you can return to
    * `git checkout feature-branch`
    * `git checkout -b temporary-branch`
    * `git rebase -i master`
    *  * Clean up the history...
    * `git checkout master`
    * `git merge temporary-branch`

### FIXUP AND AUTO-SQUASH
* To amend an arbitary commit:
    * `git add`
    * `git commit --fixup <commit-hash>` -- create a new commit with a message that starts with 'fixup'
    * `git rebase -i --autosquash <commit-hash>^` -- autosquash any child commits starting with 'fixup'
    * git will generate the rebase options and rewrite history

## HOOKS
* See: <https://www.atlassian.com/git/tutorials/git-hooks>
* Git hooks are scripts that run automatically every time a particular event occurs in a Git repository
* Hooks reside in the `.git/hooks` directory of every Git repository (install by removing the .sample extension)

## TIPS

### COMMITS
* Make the history of changes easy to follow by committing small incremental changes and using descriptive commit messages
* Write commit messages in the form of a recipe for your project: "Add linting to application code" or "Add minification step"

### HISTORY
* Before pushing to a shared repo, rebase your branch to clean up commit history
    * `git checkout feature_branch`
    * `git rebase -i master`
* Never rewrite shared history; don't reset or rebase shared commits
* Rebase from master often and fix merge conflicts as they come up:
    * `git checkout master`
    * `git fetch origin master`
    * `git rebase -i origin/master`
    * squash commits, fix up commit messages, etc
    * `git push origin master`
    * this should result in a fast-forward merge

### PULL REQUESTS
* You should think of your pull request as a request for a code review
* Before opening a PR:
    * Rebase to keep your commit history clean
        * `git checkout feature_branch`
        * `git rebase -i master`
    * Run tests
    * Pull upstream changes using rebase (`git pull upstream master --rebase`)
    * Look for a CONTRIBUTING.md in the project root
* After opening a PR:
    * Explain your changes throughly in the pull request
    * Link to any open issues your pull request might fix
    * Check back for comments from maintainers

#### FEATURE BRANCH WORKFLOW
* See: <https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow>
* The core idea behind the Feature Branch Workflow is that all feature development should take place in a dedicated branch instead of the master branch.
* This encapsulation makes it easy for multiple developers to work on a particular feature without disturbing the main codebase.
* It also means the master branch will never contain broken code, which is a huge advantage for continuous integration environments.
* Encapsulating feature development also makes it possible to leverage pull requests, which are a way to initiate discussions around a branch.
* The overall flow of the Gitflow workflow is:
    * The central repo (origin) is cloned to a local system
        * `git clone <central-git-repo-url>`
    * Changes to origin are fetched or pulled into the local clone
        * `git fetch origin master`
        * `git pull origin master`
    * A local feature branch is created
        * `git checkout -b feature_branch`
    * Once the feature is completed, the feature branch it is pushed to origin
        * `git push -u origin feature_branch`
    * A pull request to merge the feature branch into master is opened
    * Teammates review code, comment and eventually approve the pushed commits

#### GITFLOW WORKFLOW
* See: <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>
* The Gitflow workflow is great for a release-based software workflow. Gitflow offers a dedicated channel for hotfixes to production.
* Gitflow assigns very specific roles to different branches (e.g., `master`, `develop`, `hotfix`, `release`) and defines how and when they should interact.
* `feature` branches are generally merged into the `develop` branch, while `release` and `hotfix` branches are merged into both `develop` and `master`.
* Once `develop` has acquired enough features for a release (or a predetermined release date is approaching), you fork a `release` branch from `develop`.
* This starts the next release cycle; no new features can be added after this point - only bug fixes and other release-oriented tasks should go in this branch.
* Once it's ready to ship, the `release` branch gets merged into `master` and tagged with a version number. In addition, it should be merged back into `develop`.
* Using a branch to prepare releases makes it possible for one team to polish the current release while another team continues working on features for the next release.
* It also creates well-defined phases of development (e.g., "This week we're preparing for version 4.0," which is actually demonstrated in the structure of the repository").
* Like feature branches, `release` branches are based on the `develop` branch. Once the release is ready to ship, it will get merged it into `master` and `develop`, and then deleted.
* `hotfix` branches are used to quickly patch production releases. Hotfix branches are like release and feature branches except they're based on `master` instead of `develop`.
* The `hotfix` should be the only branch that forks directly off of `master`. You can think of `hotfix` branches as ad hoc release branches that work directly with `master`.
* As soon as the fix is complete, `hotfix` should be merged into both `master` and `develop` (or the current `release` branch), and `master` should be tagged with an updated version number.
* Having a dedicated line of development for bug fixes lets your team address issues without interrupting the rest of the workflow or waiting for the next release cycle.
* The overall flow of the Gitflow workflow is:
    * A develop branch is created from master
        * `git clone <official-git-repo-url>`
        * `git checkout -b develop`
    * A release branch is created from develop
        * `git branch release`
    * Feature branches are created from develop
        * `git checkout -b feature_branch`
    * When a feature is complete it is merged into the develop branch
        * `git checkout develop`
        * `git merge feature_branch`
    * When the release branch is done it is merged into develop and master
    * If an issue in master is detected a hotfix branch is created from master
        * `git checkout master && git checkout -b hotfix`
    * Once the hotfix is complete it is merged to both develop and master
        * `git checkout develop && git merge hotfix`
        * `git checkout master && git merge hotfix`

#### FORKING WORKFLOW
* See <https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow>
* The Forking Workflow is most often seen in public open source projects.
* The main advantage of the Forking Workflow is that contributions can be integrated without the need for everybody to push to a single central repository.
* Developers push to their own server-side repositories, and only the project maintainer can push to the official repository.
* This allows the maintainer to accept commits from any developer without giving them write access to the official codebase.
* The overall flow of the Forked workflow is:
    * The new server-side copy of the official repo is cloned to a local system
        * `git clone <official-git-repo-url>`
    * A remote path for the 'official' repository is added to the local clone
        * `git remote add upstream <official-git-repo-url>`
        * `git fetch upstream master`
        * `git pull upstream master`
    * A new local feature branch is created
        `git checkout -b feature_branch`
    * The developer makes changes on the new branch
    * New commits are created for the changes
    * The branch gets pushed to the developer's own server-side copy
        * `git push origin feature_branch`
    * The developer opens a pull request from the feature branch to the 'official' repository
    * The pull request gets approved for merge and is merged into the 'official' server-side repository

## COMMANDS
```bash
git config --global --edit # open the global configuration file in a text editor for manual editing
git config --global branch.autosetuprebase always # always use rebase rather than git pull (git fetch && git merge)
git init # create a new .git subdirectory in the current working directory and create a new master branch
git init <directory-name> # create a new .git subdirectory in directory-name and create a new master branch
git clone <repo-url> # download a copy of git repo into the current working directory
git show-ref # display all references in local repo along with associated commits
git show-ref --heads # display refs/heads references in local repo along with associated commits
git show-ref --tags # display refs/tags references in local repo along with associated commits
git tag # list tags
git show <tag-name> # show tag details
git tag --points-at <commit> # list all tags pointing at commit
git tag <tag-name> # tag the current branch
git tag -a <annotated-tag-name> -m "Annotated tag message" # tag the current with annotation
git add -p # selectively stage 'hunks' of files
git stash -p # selectively stash files
git stash --include-untracked # stash all files in working area include untracked
git stash save <stash-name-description> # stash file with readable reference
git stash branch <branch-name> # start a new branch from a stash
git checkout <stash-name> -- <file-name> # grab single file from stash
git stash pop # apply last stash and also remove it (if no merge conflict)
git stash drop # remove last stash (without applying it)
git stash drop stash@{n} # remove stash at n reference
git stash clear # remove all stashes
git stash list # show list of stashes and references
git stash show stash@{n} # show stashed files at n reference
git stash apply stash@{n} # apply stashed files at n reference
git stash apply # apply latest stashed files (i.e., at stash@{0})
git reset # remove files from the staging area without changing the file in the working area
git reset --merge ORIG_HEAD # (undo a merge) reset to previous HEAD and preserve uncommitted changes
cat .git/HEAD # display what HEAD is pointing at
git branch # display list of branches
git branch --list # display list of branches
git branch -a # list all remote branches
git checkout -b <branch-name> # create new branch from current HEAD
git checkout -b <new-branch> <existing-branch> # create new branch from existing branch HEAD
git checkout - # checkout the previous checked-out branch
git checkout <branch-name> # checkout the specifed branch
git checkout -- <file-name> # checkout the specified file from the latest commit (overwrites working area file)
git checkout <commit-hash> # checkout the specified commit (updates staging area files and overwrites working area files)
git checkout <commit-hash> <file-name> # checkout the specified file from the specified commit (files in both areas overwritten)
git checkout <deleting-commit>^ <file-name> # restore a deleted file by checking it out from the parent commit
git checkout -b <branch-name> master # create new branch based on master and then checkout new branch
git reset --hard HEAD # unstage and throw away all changes in pwd
git reset --hard HEAD^ # unstage and throw away all changes in pwd and go back to previous commit
git reset --hard origin/<branch-name> # reset current branch to latest commit on branch-name
git merge --no-ff <branch-name> # merge commit (i.e., merge without fast-forward)
git log --graph # view log as tree
git log --oneline # view log with commits compressed to one line
git log --oneline --decorate # view log with commit references
git log --graph --oneline --decorate # view log as tree with commit details on one line
git log -3 # view last three commits
git log -n 3 --oneline # view last three commits
git log --after="2020-12-31" # view log fter date
git log --after="yesterday" # view log after yesterday
git log --since="yesterday" # view log since yesterday
git log --since="2 weeks ago" # view log since two weeks ago
git log --after="2020-01-01" --before="2020-12-31" # view log between dates
git log --since="2020-01-01" --until="2020-12-31"  # view log between dates
git log -i --author="John" # view log by author (case insensitive)
git log -i --author="John\|Mary" # view log by authors (case insensitive)
git log -i --grep="readme" # view log by search term (case insensitive)
git log -- foo.py bar.py # view log by file (-- = arg is not branch name)
git log -S"Hello, World!" # filter log by content added
git log -G"<regex>" # filter log by content added
git log --name-status --follow <file-name> # view log for file that has been moved or renamed
git log --diff-filter=R --find-renames # find files that have been renamed
git log --diff-filter=M --oneline # find files that have been modified
git log -p # view log with commit details
git log --no-merges # view log omitting merge commits
git log --merges # view log with merge commits only
git log --pretty=format:"%cn committed %h on %cd" # pretty format using placeholders: https://www.kernel.org/pub/software/scm/git/docs/git-log.html#_pretty_formats
git shortlog # view log with commits grouped by author
git show <commit> # show the commit and its contents
git show <commit> --stat # show files changed in the commit
git show <commit>:<file-name> # look at a file from the commit
git diff # show unstaged changes
git diff --staged # show staged changes
git diff <file-name> # show changes to file
git checkout -b <branch-name> # create branch-name and checkout branch-name
git checkout -f <branch-name> # checkout and force overwrite of any changes
git config rerere.enabled true # enable rerere (reuse recorded resolution)
git rerere diff # show diffs (merge conflict situation)
git branch --merged master # show which branches have been merged into master
git branch --no-merged master # show which branches have not been merged into master
git branch -m <branch-name> # rename branch
git rebase -i HEAD~2 # start interactive rebase from two commits prior to HEAD
nano ./.git/config # display git configuration (remotes, branches, etc)
git remote # display remotes for the current git project
git remote -v # display remotes and their urls for the current git project
git remote show origin # display remote branches and endpoints for pulling and pushing
git remote add <remote-name> <git-repo-url> # add a remote connection to the git repo
git remote rm <remote-name> # delete a remote connection
git remote rename <old-remote-name> <new-remote-name> # rename a remote connection
git remote add origin <fork-repo_url> # forked repo scenario: remote 'origin' for pushing changes to fork of original repo
git remote add upstream <original-repo-url> # forked repo scenario: add remote 'upstream' for pulling changes from original repo
git branch -vv # display remove branch the local branch is tracking
git fetch # download changes on remote without changing local repository
git pull # download changes on remote branch and immediately execute git merge (git pull = git fetch && git merge)
git pull --rebase <remote> # fetch changes on remote master, update local copy, replay local commits on top of HEAD of master
git pull --rebase <remote> <branch-name> # fetch changes on remote branch, update local copy, replay local commits on top of HEAD of branch
git merge <remote-name> <branch-name> # merge remote into local (git checkout master; git merge origin master)
git merge <branch-name> master # merge master into branch (git checkout branch; git merge master)
git push <remote-name> <branch-name> # send local committed changes to remote repository (git push origin master)
git push -u origin <branch-name> # -u = create remote tracking branch; git push can now be invoked without any parameters
git cherry -v # display commits that have not been pushed upstream
git commit --amend # combine staged changes with previous commit and prompt for amended commit message (creates new commit)
git commit --amend -m <commit-message> # combine staged changes with previous commit and amend message (creates new commit)
git commit --amend --no-edit # combine staged changes with previous commit and use previous message (creates new commit)
git reflog # display reference logs for the local repo (default expiration time for reflog entries is 90 days)
git fetch --all # download all commits and files from origin
git fetch <remote-name> # download all commits and files from remote-name
git remote add coworkers_repo git@bitbucket.org:coworker/coworkers_repo.git # collaboration scenario: create connection to coworker's repo
git fetch coworkers feature_branch # collaboration scenario: fetch feature_branch from coworker's repo
git checkout coworkers/feature_branch # collaboration scenario: checkout feature_branch from coworker's repo - (detached HEAD)
git checkout -b local_feature_branch # collaboration scenario: create local branch from coworker's branch - (HEAD updated to last commit)
git branch -D <branch-name> # delete local branch
git push origin -d <branch-name> # delete remote branch
git rebase -i HEAD~3 # interactively rebase the last 3 commits
git rebase --continue # continue interactive rebase
git rebase --abort # abort rebasing to start over
git grep -e <expression> --line-number --heading --break # search files for <expression> - group by file, print new line between file groups
git grep -e <expression> -- <filename> # search within <filename> for <expression>
git blame <file-name> # who touched <filename>?
git log --diff-filter=D -- <filename> # find the commit hash for the deleted filename
git blame <filename> # show changes to <filename>
git blame <filename> -w -M -C # show changes to <filename> ignore whitespace, detect moved or copied lines within a file, detect code moved or copied from other files modified in the commit
```

## SHA1 Hash
```bash
echo 'Hello, World!' | git hash-object --stdin # 8ab686eafeb1f44702738c8b0f24f2567c36da6d
```

# References
* [Nina Zakharenko: Frontend Masters: Git In-depth: Repository: Slides](https://github.com/nnja/advanced-git)
* [Syncing: git remote, git fetch, git push, git pull](https://www.atlassian.com/git/tutorials/syncing)
* [What's a "detached HEAD" in Git?](https://www.git-tower.com/learn/git/faq/detached-head-when-checkout-commit)
* [Branching and Merging](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)
* [Making a Pull Request](https://www.atlassian.com/git/tutorials/making-a-pull-request)
