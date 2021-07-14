.. _manual:

Manual
======

CLI help
--------

.. code-block:: bash

  # Get help in the command line
  plot_nucmer --help

Required
--------

.. list-table::
   :widths: 15 10 15 50
   :header-rows: 1

   * - Arguments
     - Required
     - Default value
     - Description

   * - ``--subject``
     - Y
     - NA
     - Path to FASTA file to be used as subject in alignment.

   * - ``--sprefix``
     - Y
     - NA
     - Prefix (name) to be used for subject FASTA. If prefix has a space it must be double quoted.

   * - ``--query``
     - Y
     - NA
     - Path to FASTA file to be used as query in alignment.

   * - ``--qprefix``
     - Y
     - NA
     - Prefix (name) to be used for query FASTA. If prefix has a space it must be double quoted.

Optinal customisation
---------------------

.. list-table::
   :widths: 15 10 15 50
   :header-rows: 1

   * - Arguments
     - Required
     - Default value
     - Description

   * - ``--out``
     - N
     - plot_nucmer_${QUERY_PREFIX}_vs_${SUBJECT_PREFIX}
     - Prefix for nucmer plot outputs.

   * - ``--scolor``
     - N
     - gray70
     - R color for subject contigs.

   * - ``--qcolor``
     - N
     - steelblue
     - R color for query contigs.

   * - ``--minlen``
     - N
     - 1000
     - Min. alignment length to be considered for plot.

   * - ``--minid``
     - N
     - 90
     - Min. alignment identity to be considered for plot.

For a better understanding see the :ref:`quickstart`.
