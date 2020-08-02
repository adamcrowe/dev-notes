! Feature branches

> A "feature branch" or "topic branch" is a separate branch of the repository used to implement a single feature in your project. Create a branch for each new feature you develop instead of committing all your new features/changes into the master branch at once.

> Feature branches let you concentrate on a single specific task at one time. They let you commit  small changes while protecting collaborators from your changes until the feature is complete. What's more, if you need to jump off of a particular feature to work on something else, such as an urgent bug fix, you need not worry about stashing your changes or corrupting your repository.

! Overview: 
* Start on master 
* Create a new feature branch 
* Implement your changes on that branch 
* Push the feature branch to your remote repository 
* Create a pull request for your new changes

!! Start on master
# switch to the master branch 
git checkout master 

# fetch the latest changes from the remote git repository 
git pull origin master

!! Create new feature branch
# create and check out new local branch new_feature 
# new_feature_branch is a "copy" of master 
git checkout -b new_feature_branch 
git status

!! Implement changes on feature branch
* Make and commit small incremental changes using descriptive commit messages so the history of changes is easy to follow.

!! Push the feature branch to your remote repository
# push your feature branch to a new branch on origin with the same name 
# this distributes your changes and allows others to review before the PR 
git push origin new_feature_branch

!! Create a pull request
* (Check git tooling/implementation for how to make pull requests using that system)
* Once you have written out the description for the new PR, submit it and what for your teammate to review. You can always get their attention by mentioning them by their username: "Please review this updated form, @teammate".
