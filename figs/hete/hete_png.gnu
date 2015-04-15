#!/usr/bin/gnuplot

set terminal pngcairo size 1500,900 enhanced font 'Times-Roman,40'
set output 'hete.png'
set size 0.9,0.9
#set size ratio 0.6

#set multiplot
set style data histograms
set style histogram clustered gap 1
#set style histogram rowstacked

set xrange [-0.5:3.5]
set yrange [0:60]

set tmargin 0.5
#set bmargin 1
#set lmargin 5
set rmargin 0

set xlabel "Distribution Range (Mbps) " offset 0, 0.5
set ylabel "Improvement \n over Baseline(%)" offset 2, 0

unset key
#set key top right horizontal maxcols 4 maxrows 1 Left nobox reverse samplen 3 font ', 30' width '0'
set key top right box lw 2 reverse Left font ',45' width '2' samplen 3 spacing 1


set xtics ('[1-120]' 0, '[10-120]' 1, '[30-120]' 2, '[60-120]' 3) offset 0,0.4
set ytics 20 offset 0.5, 0 format "%.1f"
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
plot 'hete.tsv' \
	using ($2*100) fill pattern 4 lt -1 lc rgb 'black' title 'EDP', \
'' 	using ($3*100) fill pattern 3 lt -1 lc rgb 'black' title 'CEDP'
