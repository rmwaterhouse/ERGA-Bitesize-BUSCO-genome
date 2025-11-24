#!/bin/bash
set -x

# Fix permissions first
sudo chown -R vscode:vscode /opt/conda

# Configure conda to always say yes
conda config --set always_yes true

# Now everything runs as vscode user with auto-yes flags
conda install -c conda-forge mamba
mamba env create -f environment.yml
conda init bash
echo 'conda activate bitesize' >> ~/.bashrc

# Source the bashrc to apply changes immediately
source ~/.bashrc
