write_circos()
{
cat << EOF
# MINIMUM CIRCOS CONFIGURATION

# Defines unit length for ideogram and tick spacing, referenced
# using "u" prefix, e.g. 10u
chromosomes_units = 500000

# Show all chromosomes in karyotype file. By default, this is
# true. If you want to explicitly specify which chromosomes
# to draw, set this to 'no' and use the 'chromosomes' parameter.
chromosomes_display_default = no
${CUSTOM_CHR_LINE}

# Chromosome name, size and color definition
karyotype = circos.sequences.txt

<<include etc/colors_fonts_patterns.conf>>
<colors>
</colors>

<image>
<<include etc/image.conf>>
# overwrite auto_alpha_steps from default value included in etc/image.conf
auto_alpha_steps* = 10
</image>

<ideogram>

<spacing>
# spacing between ideograms
default = 0.005r
</spacing>

# ideogram position, thickness and fill
radius           = 0.85r
thickness        = 30p
fill             = yes
show_label	     = no
label_font	     = default
label_size	     = 40
label_radius	   = 1r + 75p
label_parallel	 = yes

</ideogram>

<links>
	<link>
		show     = yes
		ribbon   = no
		file     = ${INTRACHR_FILE}
		radius   = ${LINKS_RADIUS}
		tickness = 15

	<rules>

	<rule>
	 # Do not show intra-chromossome links
   condition  = var(intrachr)
   show       = ${INTRACHR_SHOW}
  </rule>

	</rules>

	</link>
</links>

# Add plots
<plots>

# GC Skew
<plot>
type        = histogram
file        = GC_skew.txt
r1          = 1r
r0          = 0.85r
thickness   = 3
max         = 0.49999999999999173
min         = -0.47826086956521324
extend_bin  = yes
orientation = out
</plot>

${LABELS_CONF}

${TILES_CONF}

</plots>

# debugging, I/O an dother system parameters
<<include etc/housekeeping.conf>> # included from Circos distribution

show_ticks = yes
show_tick_labels = yes

<ticks>

skip_first_label = no
skip_last_label  = no
radius           = dims(ideogram,radius_outer)
tick_separation  = 2p
label_separation = 5p
multiplier       = 1e-6
color            = black
thickness        = 4p
size             = 20p

# with you desired more ticks, add new tick inclusions as the one shown. See: http://circos.ca/documentation/tutorials/ticks_and_labels/labels/configuration
<tick>
spacing        = 1u
show_label     = yes
label_size     = 30p
label_offset   = 10p
format         = %d
grid           = yes
grid_color     = black
grid_thickness = 1p
grid_start     = 0.5r
grid_end       = 0.999r
</tick>

<tick>
skip_first_label = yes
spacing        = 0.5u
show_label     = yes
label_size     = 30p
label_offset   = 10p
format         = %.2fMb
grid           = yes
grid_color     = black
grid_thickness = 1p
grid_start     = 0.5r
grid_end       = 0.999r
</tick>

</ticks>

EOF
}
