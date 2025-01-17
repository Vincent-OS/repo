# Vincent OS Repositories
This is the official Vincent OS Repositories, it contains the essentials packages.

## Installation
By default, all Vincent OS version are included the repos.

In case of troubleshooting, here's how to readd the repos:
1. Edit the ``/etc/pacman.conf`` with your favourite editor as root.
2. Before the repo: ``[core]`` add this:
- For the Standard version
```
[origin]
SigLevel = Optional TrustAll
Server = https://repo.v38armageddon.net/vincent-os/origin/x86_64

[vincent-os]
SigLevel = Optional TrustAll
Server = https://repo.v38armageddon.net/vincent-os/x86_64
```

- For the Legacy version
```
[origin]
SigLevel = Optional TrustAll
Server = https://repo.v38armageddon.net/vincent-os-legacy/origin/x86_64

[vincent-os-legacy]
SigLevel = Optional TrustAll
Server = https://repo.v38armageddon.net/vincent-os-legacy/x86_64
```
3. Save it and run as root: ``pacman -Syu``.

## Structure
The composition of the repository is contained in two main repos:
- The Vincent OS (Legacy) Repo: Contain all shared packages with the Operating System
- Codename (e.g. "origin"): Contain all packages that need for each version of Vincent OS
