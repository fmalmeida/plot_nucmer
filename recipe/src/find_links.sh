find_links()
{
# create dir
mkdir -p ${RESULTS}/all_vs_all_blast

# concatenate genomes
cat ${RESULTS}/filtered/* >> ${RESULTS}/all_vs_all_blast/concatenated_genomes.fasta ;
export CONCAT_FASTA=${RESULTS}/all_vs_all_blast/concatenated_genomes.fasta
export BLAST_DB=${RESULTS}/all_vs_all_blast/blast_db

# Run blast
makeblastdb -in $CONCAT_FASTA -dbtype nucl -out $BLAST_DB &> /dev/null ;
blastn -task blastn -perc_identity $MINID -query $CONCAT_FASTA -db $BLAST_DB \
    -outfmt "6 qseqid qstart qend sseqid sstart send pident length mismatch gapopen evalue bitscore stitle" \
    -out ${RESULTS}/all_vs_all_blast/tmp.blast -num_threads $THREADS

# Filter blast
awk -F '\t' -v minid=$MINID '{ if ($7 >= minid) { print } }' ${RESULTS}/all_vs_all_blast/tmp.blast > ${RESULTS}/all_vs_all_blast/all_vs_all.blast

# Remove tmp
rm ${RESULTS}/all_vs_all_blast/tmp.blast
}
