#!/usr/bin/gnuplot

set terminal postscript enhanced portrait 'Times-Roman' 36 size 10,9 dl 3.5
set output 'fsl_gap_histo.eps'
set size 1.8,1.1
#set size ratio 0.6

#set multiplot
set style data histograms
set style histogram clustered gap 1
#set style histogram rowstacked

set xrange [-0.5:10.5]
set yrange [0:1]

set tmargin 0.5
#set bmargin 1
#set lmargin 5
set rmargin 0

set xlabel "Improvement range (%)" offset 0, 0.5
set ylabel "Number of files" offset 2, 0

unset key
#set key top right horizontal maxcols 4 maxrows 1 Left nobox reverse samplen 3 font ', 30' width '0'
set key top right box lw 2 reverse Left font ',25' width '4' samplen 3 spacing 1


set xtics ('0' 0, '0-10' 1, '10-20' 2, '20-30' 3, '30-40' 4, '40-50' 5, '50-60' 6, '60-70' 7, '70-80' 8, '80-90' 9, '90-100' 10) offset 0,0.4
set ytics 0.1 offset 0.5, 0 format "%.1f"
#set grid ytics

set boxwidth 0.9

set style fill pattern border

#set label '5.91GB/s' at 0, 1.40 center font ', 28'
#set label '5.23GB/s' at 1, 1.57 center font ', 28'
#set label '5.10GB/s' at 2, 1.61 center font ', 28'
#set label '4.54GB/s' at 3, 1.79 center font ', 28'
#
# draw some plots
#
plot 'fsl_histogram.tsv' \
	using ($1) fill pattern 3 lt -1 lc rgb 'red' title 'BASELINE', \
''	using ($2) fill pattern 3 lt -1 lc rgb 'black' title 'EDP'
