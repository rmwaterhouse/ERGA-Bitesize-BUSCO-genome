#!/bin/bash

# Add bioconda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict

# Install Miniconda and Mamba
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Initialize Mamba and update it
conda update -n base -c defaults conda -y
conda install -n base -c conda-forge mamba -y

# Initialize the shell for mamba in the same terminal session
mamba shell init --shell bash --root-prefix=~/.local/share/mamba
source ~/.bashrc

# Create a new environment with Python 3.8 for compatibility with BUSCO
mamba create -n bitesize-busco-genome bioconda::busco=6.0.0 -y

# Activate the environment in the same terminal session
source ~/.bashrc
mamba activate bitesize-busco-genome
