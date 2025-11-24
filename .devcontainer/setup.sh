#!/bin/bash
set -ex

# Install mamba
conda install -n base -c conda-forge mamba -y

# Create environment from file
mamba env create -f environment.yml

# Initialize conda for bash (this modifies ~/.bashrc)
conda init bash

# Add activation command to bashrc
echo 'conda activate bitesize' >> ~/.bashrc

# Also add to bash_profile for login shells
echo 'conda activate bitesize' >> ~/.bash_profile
