gff2tiles()
{
  # use awk to parse gff and create labels based on user desire
  echo -e "#chr\tstart\tend\toptions\tcomment"
  awk \
    -v pattern="$PATTERN" \
    -v color_val="$COLOR" \
    -v features="$FEATURES" \
    '
    BEGIN{OFS="\t";}
    {
      {
        if($0 ~ pattern && $3 ~ features){
          s = "";
          for (i = 9; i <= NF; i++) {
            s = s $i " "
          };
          print $1,$4,$5,"color="color_val,"# attributes: "s
        } ;
      }
    }' $GFF
}
