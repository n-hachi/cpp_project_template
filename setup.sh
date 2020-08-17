#!/bin/bash
set -eux

top_dir="$(git rev-parse --show-toplevel)"
tools_dir="${top_dir}/tools"
git_dir="$(git rev-parse --absolute-git-dir)"

cp ${tools_dir}/pre-commit ${git_dir}/hooks
