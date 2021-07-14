#!/bin/bash

echo "Building package...."
env
echo "___________________"

# Update build
conda update --all --yes

# Copy main file
mkdir -p $PREFIX/bin  || exit 1;

cp $RECIPE_DIR/bin/* $PREFIX/bin/

# Install r packages
Rscript $PREFIX/bin/install_packages.R
