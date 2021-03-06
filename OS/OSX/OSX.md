! [Fix macOS Mojave Font Rendering Issue](https://ahmadawais.com/fix-macos-mojave-font-rendering-issue)
* defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE

! [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)
> This guide covers the basics of setting up a development environment on a new Mac. Whether you are an experienced programmer or not, this guide is intended for everyone to use as a reference for setting up your environment or installing languages/libraries.

! Put Display to Sleep
* pmset displaysleepnow
> Press Ctrl+Shift+Eject to put your Mac's displays to sleep immediately, with no warnings or delay. If you're really finished working and want to put your Mac to sleep, press Opt+Cmd+Eject to instantly put your Mac to sleep.

! Show hidden files/folders

!! Shortcut
# Highlight folder to show (e.g., Macintosh HD), then... CMD + SHIFT + . (dot)

!! Manual
# open terminal
# run the following script: 
$ defaults write com.apple.Finder AppleShowAllFiles true
$ killall Finder
# if you want to switch it back just change the true to false

!! AppleScript
defaults write com.apple.Finder AppleShowAllFiles YES

! Editing Hosts file
> The best way to work with the Hosts file is using the Terminal application found in your Mac's Utilities folder. You'll need to know the IP address of the device you'd like to send your Mac to, or the domain names you're trying to keep your Mac away from.

# open terminal
$ sudo nano /etc/hosts

> If you want to add a new device or domain, move the cursor using the cursor keys and position it after the text you see, then begin typing. If you're mapping a particular IP address on your local network to a domain, you can type the IP address, hit tab, then type the domain name.

> Conversely, if you'd like to make sure a web URL doesn't go to its intended site — if you're trying to keep your Mac away from certain sites, use "127.0.0.1." That'll map it back to your Mac. Even if your Mac is assigned a different IP address by its router, 127.0.0.1 defaults to the local machine thanks to the default settings in that host file.

# Once you're done, hold down the control and O keys to save the file, then control and X to exit.
$ sudo killall -HUP mDNSResponder
# type return
> That will flush your Mac's DNS cache, so it doesn't get confused by any changes you've made to the Hosts file.

> Don't forget you've modified the Hosts file, because at some point you may need to undo the changes you've made in order to keep your Mac working right.

<http://www.imore.com/how-edit-your-macs-hosts-file-and-why-you-would-want>
