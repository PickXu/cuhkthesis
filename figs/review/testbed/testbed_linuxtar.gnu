#!/usr/bin/gnuplot

set terminal postscript enhanced portrait 'Times-Roman' 55 size 10,7 dl 3.5
set output 'testbed_linuxtar.eps'
set size 1.8,1.1
#set size ratio 0.6

#set multiplot
set style data histograms
set style histogram clustered gap 1
#set style histogram rowstacked

set xrange [0:321]
set yrange [0:1.5]

set tmargin 1
#set bmargin 1
#set lmargin 5
set rmargin 0

set xlabel "Version" offset 0, 0.5
set ylabel "Normalized \n Read Latency" offset 2, 0

unset key
#set key top right horizontal maxcols 4 maxrows 1 Left nobox reverse samplen 3 font ', 30' width '0'
set key out horizontal
set key top left reverse Left font ',55' width '4' samplen 3 spacing 1


#set xtics ('2.6.35' 0, '3.0.20' 1, '3.0.57' 2, '3.0.93' 3, '3.1.2' 4, '3.2.12' 5, '3.2.49' 6, '3.4.27' 7, '3.4.63' 8, '3.6.3' 9, '3.8.3' 10, '3.10.13' 11, '3.13.5' 12, '3.15' 13, '3.16.3' 14) rotate by 35 offset -3,-1.3
set xtics 50 offset 0,0.5
set ytics 0.2 offset 0.5, 0 format "%.1f"
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
plot 'testbed_linuxtar.tsv' \
	using ($1) fill pattern 3 lt -1 lc rgb 'black' title 'EDP'
#''	using ($2) fill pattern 3 lt -1 lc rgb 'black' title 'EDP'
