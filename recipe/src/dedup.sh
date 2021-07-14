dedup()
{
for file in ${RESULTS}/conf/*.txt; do
    sort -u ${file} > tmp.txt ;
    cat tmp.txt   > ${file} ;
    rm tmp.txt
done
}
