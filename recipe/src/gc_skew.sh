gc_skew()
{
# exec GCcalc.py
$CONDA_PREFIX/bin/python3 $CONDA_PREFIX/bin/GCcalc.py -f ${RESULTS}/all_vs_all_blast/concatenated_genomes.fasta -w $GCWINDOW -s $GCSTEP | \
    cut -f 1,2,3,5 | awk '{ if ($4 > 0) print $0 "\t" "color=dblue"; else print $0 "\t" "color=red"}' > ${RESULTS}/conf/GC_skew.txt
}
