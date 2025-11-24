#!/bin/bash
set -x

# Install mamba
conda install -c conda-forge mamba -y

# Create environment
mamba env create -f environment.yml

# Initialize conda for the vscode user specifically
sudo -u vscode conda init bash

# Add activation to vscode user's bashrc
echo 'conda activate bitesize' >> /home/vscode/.bashrc
