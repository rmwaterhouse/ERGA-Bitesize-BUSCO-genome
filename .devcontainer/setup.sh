#!/bin/bash
set -e  # Exit on error, but let's catch them

echo "=== Step 1: Installing mamba ==="
if conda install -n base -c conda-forge mamba -y; then
    echo "✓ Mamba installed successfully"
else
    echo "✗ Failed to install mamba"
    exit 1
fi

echo "=== Step 2: Creating environment from environment.yml ==="
if mamba env create -f environment.yml; then
    echo "✓ Environment created successfully"
else
    echo "✗ Failed to create environment"
    exit 1
fi

echo "=== Step 3: Initializing conda ==="
if conda init bash; then
    echo "✓ Conda initialized"
else
    echo "✗ Failed to initialize conda"
    exit 1
fi

echo "=== Step 4: Setting up auto-activation ==="
echo 'conda activate bitesize' >> ~/.bashrc
echo 'conda activate bitesize' >> ~/.bash_profile
echo "✓ Setup complete!"

echo "=== Verifying environment ==="
conda env list
