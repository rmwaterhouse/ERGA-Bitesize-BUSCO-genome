#!/bin/bash
set -x

# Fix permissions first
sudo chown -R vscode:vscode /opt/conda

# Now everything runs as vscode user
conda install -c conda-forge mamba -y
mamba env create -f environment.yml
conda init bash
echo 'conda activate bitesize' >> ~/.bashrc
