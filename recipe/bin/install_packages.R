#!/usr/bin/Rscript

# CRAN
install.packages("docopt")
install.packages("devtools")
install.packages("ggplot2")

# Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("GenomicRanges")
BiocManager::install("ggbio")

# Github
library(devtools); install_github("timflutre/rutilstimflutre")
