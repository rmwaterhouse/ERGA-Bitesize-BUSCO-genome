#!/bin/bash
set -ex

# Install mamba
conda install -n base -c conda-forge mamba -y

# Create environment from file
mamba env create -f environment.yml

# Properly initialize conda for the vscode user
eval "$(conda shell.bash hook)"
conda init bash

# Add activation to bashrc AND bash_profile
echo 'eval "$(conda shell.bash hook)"' >> ~/.bashrc
echo 'conda activate bitesize' >> ~/.bashrc
