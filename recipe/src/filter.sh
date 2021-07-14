filter()
{
# create results dir
mkdir -p $RESULTS

# create dir for files
mkdir -p ${RESULTS}/filtered

# filter genomes
IFS=','
while read -r FASTA FASTA_PREFIX FASTA_COLOR ; do
  name="$(basename $FASTA)" ;
  $CONDA_PREFIX/bin/perl $CONDA_PREFIX/bin/removesmalls.pl $MINLEN $FASTA >> ${RESULTS}/filtered/"$name" ;
  continue
done<"$FOFN"

}
