#!/usr/bin/Rscript

# fix
options(unzip = Sys.which("unzip"))
Sys.setenv(TAR = Sys.which("tar"))

# Github
devtools::install_github("jyypma/nloptr")
devtools::install_github("timflutre/rutilstimflutre")
