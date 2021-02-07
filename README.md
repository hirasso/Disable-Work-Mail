Work-Mail
=================

A little helper to disable your work email in Apple Mail during certain hours of the day.

**Prerequisites**

OSX with Mail

**Installation**

```
$ cp com.rassohilber.work-mail.plist ~/Library/LaunchAgents/
$ cp work-mail.applescript /usr/local/lib/
$ launchctl load ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
```

Reload after a change in the Property List file:

```
launchctl unload ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
launchctl load ~/Library/LaunchAgents/com.rassohilber.work-mail.plist
```
