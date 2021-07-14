#!/usr/bin/Rscript

# CRAN
install.packages("docopt", repos = "http://cran.us.r-project.org")
install.packages("devtools", repos = "http://cran.us.r-project.org")
install.packages("ggplot2", repos = "http://cran.us.r-project.org")
install.packages("BiocManager", repos = "http://cran.us.r-project.org")

# Bioconductor
BiocManager::install("GenomicRanges")
BiocManager::install("ggbio")

# Github
library(devtools); install_github("timflutre/rutilstimflutre")
