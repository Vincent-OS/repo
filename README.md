# Vincent OS Repositories
This is the official Vincent OS Repositories, it contains the essentials packages.

## Installation
By default, all Vincent OS Editions are included the repos.

In case of troubleshooting, here's how to readd the repos:
1. Edit the ``/etc/pacman.conf`` with your favourite editor as root.
2. After the repo: ``[multilib]`` add this:
- For the Standard Edition
```
[origin]
Include = /etc/pacman.d/vincent-os-mirrorlist

[vincent-os]
Include = /etc/pacman.d/vincent-os-mirrorlist
```
3. Save it and run as root: ``pacman -Syu``.

## Structure
The composition of the repository is contained in two main repos:
- The Vincent OS Repo: Contain all shared packages with the Operating System
- Codename (e.g. "origin"): Contain all packages that need for each editions of Vincent OS
