

# COMMIT MESSAGES
> One way to think about commit messages is that together they make up the recipe for your project: "Add linting to application code" or "Add minification step"

# CONFIG

## EDITOR
* Configure git editor - git.io/config-editor
* Current Config:
* `git config --global core.editor "code --wait"` -- use VSCode as editor`

## ALIASES
* Change aliases:
`cd ~ && nano .bash_profile`

* Current aliases:
alias ga='git add'
alias gp='git push'
alias gpu='git pull'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gm='git commit -m'

# BITBUCKET
* Get repo details:
`curl --user <login>:<password> https://api.bitbucket.org/2.0/repositories/<user>`

# GUIDES
* [Moving A Git Repository To A New Server](https://www.smashingmagazine.com/2014/05/moving-git-repository-new-server/)
* [Moving git repository and all its branches, tags to a new remote repository keeping commits history](https://gist.github.com/niksumeiko/8972566)
* [GitHub - Delete commits history with git commands](https://gist.github.com/heiswayi/350e2afda8cece810c0f6116dadbe651)