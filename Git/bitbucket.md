# Workspace Settings
* <https://bitbucket.org/{username}/workspace/settings>
* git clone <https://{username}@bitbucket.org/{username}/{repo}.git>

# Remove Username from Remote
* Don't add the remote URL that BitBuckets suggests:
* `git remote add origin https://username@bitbucket.org/teamName/repo.git`
* Instead, add the remote URL without your username:
* `git remote add origin https://bitbucket.org/teamName/repo.git`
* This way, when you go to pull from or push to a repo, it prompts you for your username, then for your password.

# References
* <https://support.atlassian.com/bitbucket-cloud/docs/update-your-username/>
* <https://support.atlassian.com/bitbucket-cloud/docs/change-a-workspace-id/>
* <https://stackoverflow.com/questions/15166722/use-own-username-password-with-git-and-bitbucket>