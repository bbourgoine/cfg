#!/bin/bash
# Submodules are defined in the git repo, but aren't checked out with the rest of the repo
# This script grabs any that are defined
cd ~/cfg
git submodule init
git submodule update

