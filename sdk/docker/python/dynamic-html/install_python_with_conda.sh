#!/bin/bash
set -e
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" > /dev/null 2>&1 && pwd )"

# 1. Init occlum workspace
[ -d occlum_instance ] || occlum new occlum_instance > /dev/null 2>&1

# 2. Install python and dependencies to specified position
# [ -f Miniconda3-latest-Linux-x86_64.sh ] || wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > /dev/null 2>&1
# [ -d miniconda ] || bash ./Miniconda3-latest-Linux-x86_64.sh -b -p $script_dir/miniconda > /dev/null 2>&1
# $script_dir/miniconda/bin/conda create --prefix $script_dir/python-occlum -y python=3.8.10 jinja2 > /dev/null 2>&1

# 3. Remove miniconda and installation scripts
# rm -rf ./Miniconda3-latest-Linux-x86_64.sh $script_dir/miniconda
