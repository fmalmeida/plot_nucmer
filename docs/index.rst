.. _index:

plot_nucmer
===========

`Plot_nucmer <https://github.com/fmalmeida/plot_nucmer>`_ is a simple `conda <https://conda.io/>`_ package that aims on rapidly and easily running an alignment with nucmer and visualising its results.

Installation
------------

Installation is described in the `github main page <https://github.com/fmalmeida/plot_nucmer>`_.

Conda package
"""""""""""""

> Users are advised to create separate conda environments

.. code-block:: bash

   # Get the conda package
   mamba create -n plot_nucmer -c conda-forge -c bioconda -c falmeida plot_nucmer

.. TIP:: Users are advised to use `mamba <https://github.com/mamba-org/mamba>`_ since it is faster.

Docker image
""""""""""""

.. code-block:: bash

   # pull and enter the image
   docker run --platform linux/amd64 -v $(pwd):/work -w /work -it fmalmeida/plot_nucmer

   # run the script from inside the container
   root@c896e9370a2f:/work# plot_nucmer --help

Available features
------------------

This script is designed to:

* Perform whole genome alignment between FASTAs with `nucmer <https://github.com/mummer4/mummer>`_.
* Filter alignments by length and identity
* Plot these alignments in circular visualisation with `ggbio <https://bioconductor.org/packages/release/bioc/html/ggbio.html>`_.

It is an automation of the methods described by Taylor Reiter at https://taylorreiter.github.io/2019-05-11-Visualizing-NUCmer-Output/.

.. toctree::
   :hidden:
   :caption: Home

   self

.. toctree::
   :hidden:
   :caption: Kickoff

   quickstart

.. toctree::
   :hidden:
   :caption: Reference book

   manual

Support Contact
===============
Whenever a doubt arise feel free to contact me at almeidafmarques@gmail.com
