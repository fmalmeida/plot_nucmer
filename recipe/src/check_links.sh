check_links()
{
# get chrs with links
## chr source
cut -f 1 ${RESULTS}/conf/links_concatenated_colored.txt >> tmp.chrs
## chr target
cut -f 4 ${RESULTS}/conf/links_concatenated_colored.txt >> tmp.chrs

# export LINE
CHRS=$(cat tmp.chrs | sort -u | tr '\n' ';') ;
rm tmp.chrs ;
export CUSTOM_CHR_LINE="chromosomes = "${CHRS} ;
}
