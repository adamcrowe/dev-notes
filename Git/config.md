# CONFIG

## EDITOR
* Current Config:
* `git config --global core.editor "code --wait"` -- use VSCode as editor
* `git config --global alias.lg "log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"` -- pretty log

## COMMITTER
> Committer: Alice <alicem@bob.local>
> Your name and email address were configured automatically based
> on your username and hostname. Please check that they are accurate.
> You can suppress this message by setting them explicitly. Run the
> following command and follow the instructions in your editor to edit
> your configuration file:
* `git config --global --edit`

> After doing this, you may fix the identity used for this commit with:
* `git commit --amend --reset-author`

## ALIASES
* Change aliases:
`cd ~ && nano .bash_profile`

* Current aliases:
```bash
alias ga='git add'
alias gp='git push'
alias gpu='git pull'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gm='git commit -m'
```

## CLI
* [Git Complete Script](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)

```bash
#!/bin/bash
URL="https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"
PROFILE="$HOME/.profile"​
echo "Downloading git-completion..."
if ! curl "$URL" --silent --output "$HOME/.git-completion.bash"; then
    echo "ERROR: Couldn't download completion script. Make sure you have a working internet connection." && exit 1
fi

SOURCE_LINE="source ~/.git-completion.bash"

if [[ -f "$PROFILE" ]] && grep -q "$SOURCE_LINE" "$PROFILE"; then
    echo "Already added to bash profile."
else
	echo "Adding to bash profile..."
    echo "$SOURCE_LINE" >> "$PROFILE"
fi

​    echo "Reloading bash profile..."
    source "$PROFILE"
​    echo
    echo "Successfully installed."
    echo "Git auto-completion should be all set!"
```

## BITBUCKET
* Get repo details:
`curl --user <login>:<password> https://api.bitbucket.org/2.0/repositories/<user>`

# REFERENCES
* [Git Editor Config](https://gist.github.com/nnja/caeb2ffeb407debca3bde5f875996804)
* [Git Complete Script](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)
* [Moving A Git Repository To A New Server](https://www.smashingmagazine.com/2014/05/moving-git-repository-new-server/)
* [Moving git repository and all its branches, tags to a new remote repository keeping commits history](https://gist.github.com/niksumeiko/8972566)
* [GitHub - Delete commits history with git commands](https://gist.github.com/heiswayi/350e2afda8cece810c0f6116dadbe651)