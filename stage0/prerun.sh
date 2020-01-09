#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
	bootstrap buster "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/raspbian/
    bootstrap buster "${ROOTFS_DIR}" http://archive.raspbian.org/raspbian
    bootstrap buster-staging "${ROOTFS_DIR}" http://archive.raspbian.org/raspbian

    bootstrap buster "${ROOTFS_DIR}" http://archive.raspberrypi.org/debian

    bootstrap buster "${ROOTFS_DIR}" http://ftp.debian.org/debian
    bootstrap buster-updates "${ROOTFS_DIR}" http://ftp.debian.org/debian
    bootstrap buster-backports "${ROOTFS_DIR}" http://ftp.debian.org/debian

    bootstrap buster/updates "${ROOTFS_DIR}" http://security.debian.org/
fi
