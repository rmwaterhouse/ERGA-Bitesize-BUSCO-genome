#!/bin/bash
set -x

# Fix permissions first
sudo chown -R vscode:vscode /opt/conda

# Now everything runs as vscode user with auto-yes flags
conda install -c conda-forge mamba -y
mamba env create -f environment.yml -y
conda init bash --no-user
echo 'conda activate bitesize' >> ~/.bashrc
