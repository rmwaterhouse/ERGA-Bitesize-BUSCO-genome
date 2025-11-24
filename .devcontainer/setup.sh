#!/bin/bash
set -x

conda install -c conda-forge mamba -y
mamba env create -f environment.yml
conda init bash
echo 'conda activate bitesize' >> /home/vscode/.bashrc
