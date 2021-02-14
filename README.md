Work-Mail
=================

A little helper to disable your work email in Apple Mail during certain hours of the day.

**Prerequisites**

OSX with Mail

**Installation**

```
$ cp work-mail.applescript /usr/local/lib/
$ sudo cp com.rassohilber.work-mail.plist /Library/LaunchDaemons/
$ sudo launchctl load /Library/LaunchDaemons/com.rassohilber.work-mail.plist
```

Reload after a change in the Property List file:

```
sudo launchctl unload -w /Library/LaunchDaemons/com.rassohilber.work-mail.plist
sudo launchctl load -w /Library/LaunchDaemons/com.rassohilber.work-mail.plist
```
