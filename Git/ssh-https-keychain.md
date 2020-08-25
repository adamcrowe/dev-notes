See: [CLI/ssh.md](../CLI/ssh.md)

## Credential Helper
```bash
git config -l # check credential setting
credential.helper=osxkeychain # using osxkeychain for repos cloned using HTTPs
user.name=Adam
user.email=adam@adamcrowe.com
core.editor=code --wait
```

## Clone repos using SSH not HTTPS
* Don't use HTTPs because it requires login to be saved in the keychain

```bash
git clone git@github.com:USERNAME/REPOSITORY.git
```

## Set repo remotes to use SSH
```bash
git remote -v
origin  git@github.com/USERNAME/REPOSITORY.git (fetch) # uses HTTPS
origin  git@github.com/USERNAME/REPOSITORY.git (push) # uses HTTPS
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git # set to use SSH
git remote -v
origin  git@github.com:USERNAME/REPOSITORY.git (fetch) # uses SSH
origin  git@github.com:USERNAME/REPOSITORY.git (push) # uses SSH
```

## How to tell git which private key to use
* `nano ~/.ssh/config`
* add:
host github.com
 HostName github.com
 IdentityFile ~/.ssh/id_rsa_github
 User git
* If the config file is new: `chmod 600 ~/.ssh/config`
* Now you can do `git clone git@github.com:USERNAME/REPOSITORY.git`
* NOTE: On Linux and macOS, verify that the permissions on your IdentityFile are 400.
    * SSH will reject, in a not clearly explicit manner, SSH keys that are too readable.
    * It will just look like a credential rejection. The solution, in this case, is:
    * `chmod 400 ~/.ssh/id_rsa_github`

# References
* [disable git credential-osxkeychain](https://stackoverflow.com/questions/16052602/disable-git-credential-osxkeychain)
* [Updating credentials from the OSX Keychain](https://docs.github.com/en/github/using-git/updating-credentials-from-the-osx-keychain)
* [Changing a remote's URL](https://docs.github.com/en/github/using-git/changing-a-remotes-url#switching-remote-urls-from-ssh-to-https)
* [How to tell git which private key to use?](https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use)