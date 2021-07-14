FROM fmalmeida/mamba
SHELL ["/bin/bash", "-c"]
MAINTAINER Felipe Marques de Almeida <felipemarques89@gmail.com>

# install program
# Get the conda package
RUN mamba install -y -c conda-forge -c bioconda -c falmeida easy_circos

# SET ENV
ENV CONDA_PREFIX=/opt/conda
