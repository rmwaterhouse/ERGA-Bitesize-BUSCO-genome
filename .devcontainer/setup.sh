#!/bin/bash

conda env create -f environment.yml
echo "conda activate myproject" >> ~/.bashrc
