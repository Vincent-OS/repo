# Vincent OS Repo
This is the official Vincent OS Repo, it contains the essentials packages.

## Layout
There is three branches for this repo:
- master: Contains only this repo and essentials build for Azure Static Web.
- vincent-os: Contains packages for the Vincent OS version based on arch.
- vincent-os-legacy: Contains packages for the Vincent OS Legacy version based on debian.

## Installation
By default, all Vincent OS version are included the repos.

In case of troubleshooting, here's how to readd the repos:
- Vincent OS:
    1. Edit the ``/etc/pacman.conf`` with your favourite editor as root.
    2. Before the repo: ``[core]`` add this:
        ```
        [vincent-os]
        SigLevel = Optional TrustAll
        Server = https://repo.v38armageddon.net/vincent-os
        ```
    3. Save it and run as root: ``pacman -Syu``.
- Vincent OS Legacy:
    1. Edit the ``/etc/apt/sources.list`` with your favourite editor as root.
    2. Add this in the begining of line 1:
        ```
        deb https://repo.v38armageddon.net/vincent-os-legacy ./
        ```
    3. Save it and run as root: ``apt update``.
