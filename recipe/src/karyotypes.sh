karyotype()
{
# create dir
mkdir -p ${RESULTS}/conf

# write karyotypes
IFS=','
while read -r FASTA FASTA_PREFIX FASTA_COLOR ; do
  name="$(basename $FASTA)" ;
  FILTERED_FASTA=${RESULTS}/filtered/"$name" ;
  bioawk -c fastx -v p=$FASTA_PREFIX -v color=$FASTA_COLOR \
    '{ printf "chr - " substr($name,1) " " p":" substr($name,1) " " "0" " " length($seq) " " color"\n" }' \
    $FILTERED_FASTA >> ${RESULTS}/conf/circos.sequences.txt ;
done<"$FOFN"
}
