# Vincent OS Repo
This is the official Vincent OS Repo, it contains the essentials packages.

## Installation
By default, all Vincent OS version are included the repos.

In case of troubleshooting, here's how to readd the repos:
1. Edit the ``/etc/pacman.conf`` with your favourite editor as root.
2. Before the repo: ``[core]`` add this:
```
[vincent-os]
SigLevel = Optional TrustAll
Server = https://repo.v38armageddon.net/vincent-os
```
3. Save it and run as root: ``pacman -Syu``.
