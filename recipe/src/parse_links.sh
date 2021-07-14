parse_links()
{
# create dir
mkdir -p ${RESULTS}/conf

# Filter blocks with more then N bp hits
awk -v minlen=$MINLINKLEN '{ if ($8 >= minlen) { print } }' \
  ${RESULTS}/all_vs_all_blast/all_vs_all.blast | cut -f 1,2,3,4,5,6 >> ${RESULTS}/conf/links_concatenated.txt ;

# get links comming from contigs and give it colors
IFS=','
while read -r FASTA FASTA_PREFIX FASTA_COLOR ; do
  bioawk -c fastx '{ printf $name"\n" }' $FASTA > tmp_names.fasta ;
  awk -v color1=$FASTA_COLOR -F'\t' 'NR==FNR{c[$1]++;next};c[$1] > 0 {print $0 "\t" "color="color1}' \
    tmp_names.fasta ${RESULTS}/conf/links_concatenated.txt >> ${RESULTS}/conf/links_concatenated_colored.txt
  rm tmp_names.fasta ;
done<"$FOFN"

# create additional file whithout intrachr links
awk -F'\t' '{ if ($1 != $4) { print } }' ${RESULTS}/conf/links_concatenated_colored.txt > ${RESULTS}/conf/links_concatenated_colored_no_intrachr.txt ;
}
