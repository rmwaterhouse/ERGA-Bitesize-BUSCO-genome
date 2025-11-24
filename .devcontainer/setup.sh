#!/bin/bash
set -x

# Configure conda to use user-writable paths
conda config --set pkgs_dirs ~/.conda/pkgs
conda config --set envs_dirs ~/.conda/envs

# Add channels
conda config --add channels conda-forge
conda config --add channels bioconda
conda config --add channels defaults

# Install mamba
conda install -c conda-forge mamba -y

# Create environment
mamba env create -f environment.yml

# Initialize conda
conda init bash
echo 'conda activate bitesize' >> ~/.bashrc
