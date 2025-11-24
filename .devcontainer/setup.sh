#!/bin/bash
set -x

# Fix permissions first
sudo chown -R vscode:vscode /opt/conda

# Now everything runs as vscode user with auto-yes flags
conda install -c conda-forge mamba -y
mamba env create -f environment.yml -y
echo 'eval "$(mamba shell hook --shell bash)"' >> ~/.bashrc
echo 'mamba activate bitesize' >> ~/.bashrc
