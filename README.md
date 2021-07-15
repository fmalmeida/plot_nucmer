[![GitHub release (latest by date)](https://img.shields.io/github/v/release/fmalmeida/plot_nucmer?style=flat-square)](https://github.com/fmalmeida/plot_nucmer/releases) [![](https://anaconda.org/falmeida/plot_nucmer/badges/version.svg)](https://anaconda.org/falmeida/plot_nucmer/badges) [![](https://anaconda.org/falmeida/plot_nucmer/badges/latest_release_date.svg)](https://anaconda.org/falmeida/plot_nucmer/badges) [![](https://anaconda.org/falmeida/plot_nucmer/badges/platforms.svg)](https://anaconda.org/falmeida/plot_nucmer) [![](https://anaconda.org/falmeida/plot_nucmer/badges/installer/conda.svg)](https://anaconda.org/falmeida/plot_nucmer)

# Plot nucmer

plot_nucmer is a simple script to run an alignment with nucmer and visualise its results.

## Table of contents

* [Features](https://github.com/fmalmeida/plot_nucmer#features)
* [Installation](https://github.com/fmalmeida/plot_nucmer#installation)
* [Documentation](https://github.com/fmalmeida/plot_nucmer#documentation)
* [How can you colaborate?](https://github.com/fmalmeida/plot_nucmer#collaborating)
* [Citation](https://github.com/fmalmeida/plot_nucmer#citation)

## Features

This script is designed to:

* Perform whole genome alignment between FASTAs with [nucmer](https://github.com/mummer4/mummer).
* Filter alignments by length and identity
* Plot these alignments in circular visualisation with [ggbio](https://bioconductor.org/packages/release/bioc/html/ggbio.html).

It is an automation of the methods described by Taylor Reiter at https://taylorreiter.github.io/2019-05-11-Visualizing-NUCmer-Output/.

> If you don't link very much the combination of nucmer and ggbio, check out my other package called [easy_circos](https://github.com/fmalmeida/easy_circos) that uses blastn and circos.

## Installation

## Conda package

> Users are advised to create separate conda environments

```bash
# Get the conda package
mamba create -n plot_nucmer -c conda-forge -c bioconda -c falmeida plot_nucmer
```

:fire: Users are advised to use [mamba](https://github.com/mamba-org/mamba) since it is faster.

## Docker image

```bash
# pull and enter the image
docker run --platform linux/amd64 -v $(pwd):/work -w /work -it fmalmeida/plot_nucmer

# run the script from inside the container
root@c896e9370a2f:/work# plot_nucmer --help
```

> Remember to use the parameters `-v` so your files are available to the docker container.

:fire: The "--platform linux/amd64" only tells docker the architecture that the image was built so it emulates the correct one. You can run this exact command in any system architecture.

## Documentation

Command line documentation can be seen with:

```bash
# activate env
conda activate plot_nucmer

# see help
plot_nucmer --help
```

Additionally, an online documentation and a simple step-by-step quickstart is provided:

* [Online manual >>](https://easy-circos.readthedocs.io/en/latest/)
* [Step-by-step quickstart >>](https://easy-circos.readthedocs.io/en/latest/quickstart.html)

## Collaborating

You can collaborate by:

* flagging an **enhancement issue** discussing your idea in the homepage of the project
* you can fork the repo, create and start the implementation of your own script/command in the project and then submit a **pull request**
    * I'll then check the request, make sure it is in the same format and standards of the already implemented commands and **confirm** the inclusion.
    * Of course, you will be recognized as the developer/creator of that specific implementation.

Checkout more at about forking and contributing to repos at:

* [Chase's tutorial](https://gist.github.com/Chaser324/ce0505fbed06b947d962)
* [github's advises on how to collaborate to projects](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests)

## Citation

To cite this pipeline users can use the github url. Users are encouraged to cite the python packages used in this pipeline whenever their outputs are valuable.
