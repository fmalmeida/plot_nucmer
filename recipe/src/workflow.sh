workflow()
{
  ## remove existing results
  rm -rf $RESULTS ;

  # Step 1
  echo " # Preparing inputs!"
  filter          ;

  # Step 2
  echo " # Writing karyotypes!"
  karyotype       ;

  # Step 3
  echo " # Finding links (all vs all blastn)!"
  find_links      ;
  parse_links     ;

  # Step 4
  echo " # Removing duplicate lines in conf files!"
  dedup           ;
  check_links     ;

  # Step 5
  echo " # Computing GC Skew!"
  gc_skew         ;

  # Step 6
  # Check for labels
  if [ -z "$LABELS" ]
  then
    echo "" > /dev/null ;
  else
    echo " # Parsing labels!" ;
    labels                    ;
  fi

  # Step 7
  # Check for tiles
  if [ -z "$TILES" ]
  then
    echo "" > /dev/null ;
  else
    echo " # Parsing tiles!" ;
    tiles                    ;
  fi

  # Step 6
  echo " # Wrinting circos conf file!"
  write_circos > ${RESULTS}/conf/circos.conf ;

  # Step 7
  echo " # Plotting circos!"
  plot_circos     ;

  # Bye
  echo ${BYE}
}
