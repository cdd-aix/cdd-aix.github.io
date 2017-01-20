---
title: "Debian, ZFS Root, Systemd, Docker"
---

I run FreeBSD for ZFS and was fascinated by Docker on FreeBSD.
I was disappointed when Alpine based Docker images wouldn't play nice on FreeBSD.

Debian ZFS Root support has reached FreeBSD 9's ZFS Root support.
https://github.com/zfsonlinux/zfs/wiki/Debian-Jessie-Root-on-ZFS is spot on.

But don't give into the temptation of
zfs create -p rpool/var/lib/docker

/var/lib/dkms must allow execute, because without execute configure scripts, like ZFS and SPL, won't run.
For added fun, systemd will pitch a fit trying to mount /var/lib/systemd.

zfs create -o canmount=off rpool/var/lib

zfs create -o rpool/var/lib/docker

works great, because /var/lib/dkms remains part of /.

