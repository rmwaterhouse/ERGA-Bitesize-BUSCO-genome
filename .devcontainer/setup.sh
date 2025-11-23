#!/bin/bash

# Add bioconda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict

# Install your desired packages
conda install -c conda-forge mamba
mamba install -c conda-forge -c bioconda busco=6.0.0
