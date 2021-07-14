[![GitHub release (latest by date)](https://img.shields.io/github/v/release/fmalmeida/easy_circos?style=flat-square)](https://github.com/fmalmeida/easy_circos/releases) [![](https://anaconda.org/falmeida/easy_circos/badges/version.svg)](https://anaconda.org/falmeida/easy_circos/badges) [![](https://anaconda.org/falmeida/easy_circos/badges/latest_release_date.svg)](https://anaconda.org/falmeida/easy_circos/badges) [![](https://anaconda.org/falmeida/easy_circos/badges/platforms.svg)](https://anaconda.org/falmeida/easy_circos) [![](https://anaconda.org/falmeida/easy_circos/badges/installer/conda.svg)](https://anaconda.org/falmeida/easy_circos)

# Easy (minimal) circos plot

easy_circos is a simple conda package that aims on rapidly and easily creating minimal circos configurations templates based on input data so that users can further customize and plot by their own desires.

## Table of contents

* [Features](https://github.com/fmalmeida/easy_circos#features)
* [Installation](https://github.com/fmalmeida/easy_circos#installation)
* [Documentation](https://github.com/fmalmeida/easy_circos#documentation)
* [How can you colaborate?](https://github.com/fmalmeida/easy_circos#collaborating)
* [Citation](https://github.com/fmalmeida/easy_circos#citation)

## Features

For now, it can create a circos plot with:

* Chromosome Ideograms. See [circos manual ideograms](http://circos.ca/documentation/tutorials/ideograms/ideograms/lesson).
* Tick marks of chr lengths. See [circos manual ticks](http://circos.ca/documentation/tutorials/ticks_and_labels/basics/).
* GC Skew plot.
* Tiles and text labels from 2D tracks. Eg. genomic regions. See [circos manual 2D tracks](http://circos.ca/documentation/tutorials/2d_tracks/).
* Similarity links between one or more FASTAs. See [circos manual links](http://circos.ca/documentation/tutorials/links/).

> If you have another idea of implementation flag an issue discussing it (See: [How can you colaborate?](https://github.com/fmalmeida/easy_circos#collaborating))

## Installation

## Conda package

> Users are advised to create separate conda environments

```bash
# Get the conda package
mamba create -n easy_circos -c conda-forge -c bioconda -c falmeida easy_circos
```

:fire: Users are advised to use [mamba](https://github.com/mamba-org/mamba) since it is faster and better solves perl dependencies.

## Docker image

```bash
# pull and enter the image
docker run --platform linux/amd64 -v $(pwd):/work -w /work -it fmalmeida/easy_circos

# run the script from inside the container
root@c896e9370a2f:/work# plot_circos --help
```

> Remember to use the parameters `-v` so your files are available to the docker container.

:fire: The "--platform linux/amd64" only tells docker the architecture that the image was built so it emulates the correct one. You can run this exact command in any system architecture.

## Documentation

Command line documentation can be seen with:

```bash
# activate env
conda activate easy_circos

# see help
plot_circos --help
```

Additionally, an online documentation and a simple step-by-step quickstart is provided:

* [Online manual >>](https://easy-circos.readthedocs.io/en/latest/)
* [Step-by-step quickstart >>](https://easy-circos.readthedocs.io/en/latest/quickstart.html)

## Collaborating

This is meant to be a collaborative project, which means it is meant to adapt to the community needs. Thus, we encourage users to use it and to collaborate with ideas for different implementations, new commands, additions, etc.

If you have an analysis that you constantly do when working with GFFs and would like to see it implemented in a command-like package to make your life easy, or whenever you feel something can be improved, don't hesitate and **collaborate**.

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
