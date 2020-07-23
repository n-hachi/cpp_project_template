#!/bin/bash
set -eux

TOPDIR="$(git rev-parse --show-cdup)"
TOOLSDIR="${TOPDIR}tools"
GITDIR="$(git rev-parse --git-dir)"

cp -r ${TOOLSDIR}/* ${TOPDIR}${GITDIR}/hooks
