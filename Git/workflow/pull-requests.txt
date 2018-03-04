! Pull requests
> When you're ready to have your changes reviewed for inclusion in the project, that's when you submit a pull request. You should think of your pull request as a request for a code review. The project maintainers may accept it immediately, ask questions and point out tweaks that need to be made, or reject it outright. (There's a reason it's called a pull request, not a pull demand.) The commits may be taken as-is, or the maintainer may see fit to fix up or squash the changes into fewer commits.

> Once you've created a pull request, you can push commits from your topic branch to add them to your existing pull request. These commits will appear in chronological order within your pull request. Other contributors can review your proposed changes, add review comments, contribute to the pull request discussion, and even add commits to the pull request. After you're happy with the proposed changes, you can merge the pull request. If you're working in a shared repository model, the proposed changes will be merged from the head branch to the base branch that was specified in the pull request.

> When thinking about branches, remember that the base branch is where changes should be applied, the head branch contains what you would like to be applied.

> If you don't have write access to the repository where you'd like to create a pull request, you must create a fork, or copy, of the repository first.

> If the pull request does not have any merge conflicts, you can merge it. If the pull request does have merge conflicts, or if you'd like to test the changes before merging, you can check out the pull request locally and merge it using the command line. If you decide you don't want the changes in a topic branch to be merged to the upstream branch, you can close the pull request without merging.

> Repository administrators can require that all pull requests receive at least one approved review from someone with write or admin permissions or from a designated code owner before they're merged into a protected branch. When required reviews are enabled, anyone with access to the repository can approve changes in a pull request. However, to merge your pull request you need someone who has write or admin permissions in the repository to approve your pull request's changes in their review. If review is required from a designated code owner and the pull request affects code that has a designated owner, approval from that owner is required. If a person who requested changes isn't available to give an approved review, or if a pull request has changed significantly since it was reviewed, repository administrators or people with write access can dismiss a review. After all required reviewers have approved a pull request, you won't be able to merge it if there are other open pull requests with pending or rejected reviews and those pull requests have a head branch pointing to the same commit. Someone with write or admin permissions will need to approve or dismiss the blocking review on the other pull requests before you can merge.

!! Review pull request locally

# create/check in your current changes before pulling down someone else's 
git checkout -b my_feature_branch 
git status

# make a local "copy" their pull request branch 
git checkout -b pullrequest_branch origin/pullrequest 

# review

!! Merge pull request into master

# get latest master 
git checkout master 
git pull origin master

# switch to PR and merge with master 
git checkout pullrequest_branch 
git merge master

# fix any merge conflicts
git commit -m 'merge master'

# test (CI)

# switch back to master to merge this PR 
git checkout master 
git merge --no-ff docs 
git push origin master

# delete remote pullrequest_branch 
# :pullrequest_branch means "push nothing to pullrequest_branch" which deletes it 
git push origin :pullrequest_branch
