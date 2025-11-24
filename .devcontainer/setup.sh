#!/bin/bash
set -ex

conda install -n base -c conda-forge mamba -y
mamba env create -f environment.yml
conda init bash
echo "conda activate bitesize" >> ~/.bashrc
