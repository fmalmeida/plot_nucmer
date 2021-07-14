tiles()
{

# copy file
echo -e "#chr\tstart\tend\toptions\tcomment" > ${RESULTS}/conf/circos_tiles.txt ;
grep -v "^#" ${TILES} >> ${RESULTS}/conf/circos_tiles.txt

# Create label definition
read -r -d '' TILES_CONF << EOM
# Tiles
# to understand its configuration read: http://circos.ca/documentation/tutorials/2d_tracks/tiles/configuration
<plot>
type              = tile
layers_overflow   = grow
file              = circos_tiles.txt
r1                = 0.85r
r0                = 0.75r
orientation       = out

layers      = 5
margin      = 0.02u
thickness   = 15
padding     = 8

stroke_thickness = 1
stroke_color     = grey

<backgrounds>
<background>
color = vvlgrey
</background>
</backgrounds>

</plot>
EOM
}
