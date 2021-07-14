plot_circos()
{
# get current dir
CURRENT_DIR=$PWD

# got to conf dir
cd ${RESULTS}/conf/

# draw
circos

# go back
cd $CURRENT_DIR
}
