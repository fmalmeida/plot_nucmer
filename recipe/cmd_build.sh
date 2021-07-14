# remove everything
conda build purge-all
conda clean -afy

# build package
conda-build --user falmeida . -c conda-forge -c r -c defaults -c bioconda -c falmeida -c anaconda
