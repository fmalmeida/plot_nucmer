gff2labels()
{
  # use awk to parse gff and create labels based on user desire
  echo -e "#chr\tstart\tend\tlabel\toptions\tcomment"
  awk \
    -v pattern="$PATTERN" \
    -v features="$FEATURES" \
    -v attribute="^${ATTRIBUTE}" \
    -v color_val="$COLOR" \
    '
    BEGIN{OFS="\t";}
    {
      {
        if($0 ~ pattern && $3 ~ features){
          s = "";
          for (i = 9; i <= NF; i++) {
            s = s $i " "
          };
          split($9,atts,";") ;
          for (k in atts){
            if(atts[k] ~ attribute){
              split(atts[k],res,"=");
              print $1,$4,$5,res[2],"color="color_val,"# attributes: "s
            }
          }
        } ;
      }
    }' $GFF
}
