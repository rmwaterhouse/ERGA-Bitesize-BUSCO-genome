#!/bin/bash
set -e

# Configure channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict

# Install mamba
conda install -n base -c conda-forge mamba -y

# Create environment
mamba create -n bitesize python=3.10 bioconda::busco=6.0.0 -y

# Auto-activate
echo "conda activate bitesize" >> ~/.bashrc
