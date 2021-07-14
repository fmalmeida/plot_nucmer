.. _manual:

Manual
======

CLI help
--------

.. code-block:: bash

  # Get help in the command line
  plot_circos --help

Input files
-----------

.. list-table::
   :widths: 15 10 15 50
   :header-rows: 1

   * - Arguments
     - Required
     - Default value
     - Description

   * - ``--fofn``
     - Y
     - NA
     - File of file names (CSV: fasta path,prefix,color) containing list of fastas to draw circos plot.

   * - ``--labels``
     - N
     - NA
     - TSV file containing the label definitions for plotting. The file must contain 4 or 5 columns as shown at http://circos.ca/documentation/tutorials/2d_tracks/text_1/lesson.

   * - ``--tiles``
     - N
     - NA
     - TSV file containing the tile definitions for plotting. The file must contain 3 or 4 columns as shown at http://circos.ca/documentation/tutorials/configuration/data_files.

Output files
------------

.. list-table::
   :widths: 15 10 15 50
   :header-rows: 1

   * - Arguments
     - Required
     - Default value
     - Description

   * - ``--outdir``
     - N
     - ./results
     - Path to output directory.

Workflow options
----------------

.. list-table::
   :widths: 15 10 15 50
   :header-rows: 1

   * - Arguments
     - Required
     - Default value
     - Description

   * - ``--threads``
     - N
     - 1
     - Set the number of threads to be used by the software.

   * - ``--minlen``
     - N
     - 10000
     - Min size of contigs to consider for plot.

   * - ``--minid``
     - N
     - 85
     - Min. percentage id to filter the results of blastn to draw links.

   * - ``--linklen``
     - N
     - 5000
     - Min. link (blastn hit) length to display in plot.

   * - ``--show_intrachr``
     - N
     - false
     - Tells the program to create a conf file showing intra chr links. Mandatory if using only one FASTA, otherwise, links will not be shown.

   * - ``--gc_window``
     - N
     - 5000
     - GC skew window size.

   * - ``--gc_step``
     - N
     - 5000
     - GC skew step size.

Helpful scripts
---------------

gff2labels
""""""""""

Activated with ``--gff2labels`` parameter.

Syntax: ``plot_circos [ --gff2labels <FEATURES> <PATTERN> <ATTRIBUTE> <COLOR> <GFF> ]``.

A useful script that allows you to filter a GFF file and create a "circos label file" with desired inputs. Eg. ``plot_circos --gff2labels CDS arcA ID red ecoli_k12.gff``.

The example command will get each line where the feature (3rd column) is a CDS, that has the "acrA" (in the complete line) pattern to write the "circos labels file" using the ID attributes column as label (string as found in the gff), giving these features a "red" color option.

.. tip::

  For <FEATURES> and <PATTERN> users can use "" to match anything, and "|" to match more than one string. E.g. ``plot_circos --gff2tiles "" "acrA|mdt" red ecoli_k12.gff``.

For a better understanding see the :ref:`quickstart`.

gff2tiles
"""""""""

Activated with ``--gff2tiles`` parameter.

Syntax: ``plot_circos [ --gff2tiles  <FEATURES> <PATTERN> <COLOR> <GFF> ]``.

A useful script that allows you to filter a GFF file and create a "circos tiles file" with desired inputs. Eg. ``plot_circos --gff2tiles CDS arcA red ecoli_k12.gff``.

The example command will get each line where the feature (3rd column) is a CDS, that has the "acrA" (in the complete line) pattern to write the "circos tiles file" giving these features a "red" color option.

.. tip::

  For <FEATURES> and <PATTERN> users can use "" to match anything, and "|" to match more than one string. E.g. ``plot_circos --gff2tiles "" "acrA|mdt" red ecoli_k12.gff``.

For a better understanding see the :ref:`quickstart`.
