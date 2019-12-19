# SSH (Secure Shell)
Request login to machine:
```
ssh {user}@{host}
```

# Location of SSH directory

```
cd ~/.ssh
open .
```

# Generate unique keys for each repo or service (e.g. Digital Ocean)
(At prompt, name the file /Users/user1/.ssh/id_rsa_digitalocean)
Press enter at Enter passphrase prompt

```
ssh-keygen -t rsa -b 4096 -C "user1@email.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/user1/.ssh/id_rsa):
/Users/user1/.ssh/id_rsa_digitalocean
```

## Identity management of multiple keys
The ```ssh``` command and ssh-agent assumes you're using the default keys: id_rsa and id_rsa.pub
To use unique keys for different services, first generate a unique key and then add that key to the ssh-agent:

```
ssh-add ~/.ssh/id_rsa_unique
```

The ```ssh``` command and ssh-agent will now consider both the default and unique key identities when logging into a box.

## Copy public key to clipboard for sharing with service

```
~/.ssh pbcopy < ~/.ssh/id_rsa_digitalocean.pub
```

Copy the public key into the repo or service front-end, or ssh into the service (using a password), and copy the key into an 'authorized_keys' (or similar) text file.

---

# Setting Remote to use SSH without password

* Requires password: https://github.com/{username}/{repo}.git/
* Does not require password: git://github.com/{username}/{repo}.git
* Set: cd {repo} && git remote set-url origin git://github.com/{username}/{repo}.git

---

# Connect with Bitbucket using SSH

## Step 1. Set up your default identity
* 1. From the terminal, enter ssh-keygen at the command line. The command prompts you for a file to save the key in:

```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/user1/.ssh/id_rsa):
```

* 2. Press the Enter or Return key to accept the default location.

We recommend you keep the default key name unless you have a reason to change it (for example, you need a unique name for a service.)

To create a key with a name or path other than the default, specify the full path to the key. For example, to create a key called id_rsa_uniquekey, enter a path like the one shown at the prompt:

```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/user1/.ssh/id_rsa): /Users/user1/.ssh/id_rsa_uniquekey
```

* 3. Enter and re-enter a passphrase when prompted. The command creates your default identity with its public and private keys. The whole interaction will look similar to the following:

```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/user1/.ssh/id_rsa):
Created directory '/Users/user1/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /Users/user1/.ssh/id_rsa.
Your public key has been saved in /Users/user1/.ssh/id_rsa.pub.
The key fingerprint is:
4c:80:61:2c:00:3f:9d:dc:08:41:2e:c0:cf:b9:17:69 user1@myhost.local
The key's randomart image is:
+--[ RSA 2048]----+
|*o+ooo.          |
|.+.=o+ .         |
|. *.* o .        |
| . = E o         |
|    o . S        |
|   . .           |
|     .           |
|                 |
|                 |
+-----------------+
```

* 4. List the contents of ~/.ssh to view the key files.

```
$ ls ~/.ssh
id_rsa id_rsa.pub
```

The command displays two files, one for the public key (for example id_rsa.pub) and one for the private key (for example, id_rsa).

## Step 2. Add the key to the ssh-agent
If you don't want to type your password each time you use the key, you'll need to add it to the ssh-agent.

* 1. To start the agent, run the following:

```
$ eval `ssh-agent`
Agent pid 9700
```

* 2. Enter ssh-add followed by the path to the private key file:

```
$ ssh-add -K ~/.ssh/id_rsa
```

* 3. So that your computer remembers your password each time it restarts, open (or create) the ~/.ssh/config file and add these lines to the file:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

### Step 3. Add the public key to your Bitbucket settings

* 1. From Bitbucket, choose *Bitbucket settings* from your avatar in the lower left. The *Account settings* page opens.

* 2. Click *SSH keys*. If you've already added keys, you'll see them on this page.

* 3. In your terminal window, copy the contents of your public key file. If you renamed the key, replace id_rsa.pub with the public key file name. On macOS, the following command copies the output to the clipboard:

```
$ pbcopy < ~/.ssh/id_rsa.pub
```

* 4. Select and copy the key output in the clipboard. If you have problems with copy and paste, you can open the file directly with Notepad. Select the contents of the file (just avoid selecting the end-of-file characters).

* 5. From Bitbucket, click *Add key*.

* 6. Enter a Label for your new key, for example, Default public key.

* 7. Paste the copied public key into the *SSH Key* field. You may see an email address on the last line when you paste. It doesn't matter whether or not you include the email address in the *Key*.

* 8. Click *Save*. Bitbucket sends you an email to confirm the addition of the key.

* 9. Return to the terminal window and verify your configuration and username by entering the following command:

```
$ ssh -T git@bitbucket.org
```

The command message tells you which of your Bitbucket accounts can log in with that key.

```
conq: logged in as user1.
You can use git or hg to connect to Bitbucket. Shell access is disabled.
```

If you get an error message with Permission denied (publickey), check the [Troubleshoot SSH issues](https://confluence.atlassian.com/bitbucket/troubleshoot-ssh-issues-271943403.html) page for help.

# References
[Set up an SSH key](https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html)
[Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
[Connecting to GitHub with SSH](https://help.github.com/articles/connecting-to-github-with-ssh/)
[How Secure Shell Works (SSH) - Computerphile](https://www.youtube.com/watch?v=ORcvSkgdA58)