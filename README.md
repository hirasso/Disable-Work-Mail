Work-Mail
=================

A little helper to disable your work email in Apple Mail during certain hours of the day.

**Prerequisites**

OSX with Mail

**Installation**

```
$ cp work-mail.applescript /usr/local/lib/
$ cp com.rassohilber.work-mail.plist ~/Library/LaunchAgents/
$ launchctl load ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
```

Reload after a change in the Property List file:

```
launchctl unload -w ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
launchctl load -w ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
```
