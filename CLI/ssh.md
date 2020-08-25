> SSH uses a pair of keys to initiate a secure handshake between remote parties. The key pair contains a public and private key. The private vs public nomenclature can be confusing as they are both called keys. It is more helpful to think of the public key as a "lock" and the private key as the "key". You give the public 'lock' to remote parties to encrypt or 'lock' data. This data is then opened with the 'private' key which you hold in a secure place. -- <https://www.atlassian.com/git/tutorials/git-ssh>

---
Skip to...
* [General use](#general)
* [Git use](#git)

---
# Commands

* `cd ~/.ssh && ls -al` - location of SSH directory
* `eval "$(ssh-agent -s)"` - check ssh-agent is running
* `ssh-add -l` - list keys added to ssh-agent
* `ssh-add -K ~/.ssh/id_rsa` - add key to ssh-agent and keychain
* `nano ~/.ssh/config` - config ssh to use keychain:
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
* `ssh {user}@{host}` - request login to machine

---

<a name="general"></a>

General SSH use...

# Generate a unique SSH key
## 1. Execute the following to begin the key creation
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com`

This command will create a new SSH key using the email as a label

## 2. You will then be prompted to "Enter a file in which to save the key."
You can specify a file location or press “Enter” to accept the default file location.

> Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]

## 3. The next prompt will ask for a secure passphrase.
A passphrase will add an additional layer of security to the SSH and will be required anytime the SSH key is used. If someone gains access to the computer that private keys are stored on, they could also gain access to any system that uses that key. Adding a passphrase to keys will prevent this scenario.

> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]

At this point, a new SSH key will have been generated at the previously specified file path.

## 4. Add the new SSH key to the ssh-agent
The ssh-agent is another program that is part of the SSH toolsuite. The ssh-agent is responsible for holding private keys. Think of it like a keychain. In addition to holding private keys it also brokers requests to sign SSH requests with the private keys so that private keys are never passed around unsecurly.

Before adding the new SSH key to the ssh-agent first ensure the ssh-agent is running by executing:

`eval "$(ssh-agent -s)"`
> Agent pid 59566
Once the ssh-agent is running the following command will add the new SSH key to the local SSH agent:

`ssh-add -K ~/.ssh/id_rsa`

Note: The -K option is Apple's standard version of ssh-add, which stores the passphrase in your keychain for you when you add an ssh key to the ssh-agent.

* So that your computer remembers your password each time it restarts, open (or create) the `~/.ssh/config` file and add these lines to the file:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

The new SSH key is now registered and ready to use!

# Identity management of multiple keys
The `ssh` command and ssh-agent assumes you're using the default private/public key pair: `id_rsa` and `id_rsa.pub`
To use unique keys for different services, first generate a unique key and then add that key to the ssh-agent:

`ssh-add ~/.ssh/id_rsa_unique`

The `ssh` command and ssh-agent will now consider both the default and unique key identities when logging into a box.

# Copy public key to clipboard for sharing with service

`~/.ssh pbcopy < ~/.ssh/id_rsa_unique.pub`

Copy the public key into the repo or service front-end, or ssh into the service (using a password), and copy the key into an 'authorized_keys' (or similar) text file.

---

<a name="demo"></a>

Using SSH with git repos...

See: [Git/ssh-https-keychain.md](../Git/ssh-https-keychain.md)

# Connect with Bitbucket (or Github) using SSH

## Step 1. Set up your default identity
* 1. From the terminal, enter ssh-keygen at the command line. The command prompts you for a file to save the key in:

`ssh-keygen`
- Generating public/private rsa key pair.
- Enter file in which to save the key (/Users/user1/.ssh/id_rsa):

* 2. Press the Enter or Return key to accept the default location.

We recommend you keep the default key name unless you have a reason to change it (for example, you need a unique name for a service.)

To create a key with a name or path other than the default, specify the full path to the key. For example, to create a key called id_rsa_uniquekey, enter a path like the one shown at the prompt:

`ssh-keygen`
- Generating public/private rsa key pair.
- Enter file in which to save the key (/Users/user1/.ssh/id_rsa): /Users/user1/.ssh/id_rsa_uniquekey

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

`cd ~/.ssh && ls -al`

The command displays two files, one for the public key (for example id_rsa.pub) and one for the private key (for example, id_rsa).

## Step 2. Add your SSH private key to the ssh-agent and store your passphrase in the keychain

* 1. To start the agent, run the following:

`eval "ssh-agent"` - Agent pid 9700

* 2. Enter `ssh-add` followed by the path to the private key file:

`ssh-add -K ~/.ssh/id_rsa`

Note: The -K option is Apple's standard version of ssh-add, which stores the passphrase in your keychain for you when you add an ssh key to the ssh-agent.

* 3. So that your computer remembers your password each time it restarts, open (or create) the `~/.ssh/config` file and add these lines to the file:

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

### Step 3. Add the public key to your Bitbucket settings

* 1. From Bitbucket, choose *Bitbucket settings* from your avatar in the lower left. The *Account settings* page opens.

* 2. Click *SSH keys*. If you've already added keys, you'll see them on this page.

* 3. In your terminal window, copy the contents of your public key file. If you renamed the key, replace `id_rsa.pub` with the public key file name. On macOS, the following command copies the output to the clipboard:

`pbcopy < ~/.ssh/id_rsa.pub`

* 4. Select and copy the key output in the clipboard. If you have problems with copy and paste, you can open the file directly with Notepad. Select the contents of the file (just avoid selecting the end-of-file characters).

* 5. From Bitbucket, click *Add key*.

* 6. Enter a Label for your new key, for example, Default public key.

* 7. Paste the copied public key into the *SSH Key* field. You may see an email address on the last line when you paste. It doesn't matter whether or not you include the email address in the *Key*.

* 8. Click *Save*. Bitbucket sends you an email to confirm the addition of the key.

* 9. Return to the terminal window and verify your configuration and username by entering the following command:

`ssh -T git@bitbucket.org`

The command message tells you which of your Bitbucket accounts can log in with that key.

```bash
conq: logged in as user1.
You can use git or hg to connect to Bitbucket. Shell access is disabled.
```

If you get an error message with Permission denied (publickey), check the [Troubleshoot SSH issues](https://confluence.atlassian.com/bitbucket/troubleshoot-ssh-issues-271943403.html) page for help.

# References
* [Generate an SSH Key on Mac and Linux](https://www.atlassian.com/git/tutorials/git-ssh)
* [Set up an SSH key](https://confluence.atlassian.com/bitbucket/set-up-an-ssh-key-728138079.html)
* [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [Connecting to GitHub with SSH](https://help.github.com/articles/connecting-to-github-with-ssh/)
* [How Secure Shell Works (SSH) - Computerphile](https://www.youtube.com/watch?v=ORcvSkgdA58)
* [ssh-keygen - Generate a New SSH Key](https://www.ssh.com/ssh/keygen)