#!/usr/bin/gnuplot

set terminal postscript enhanced portrait 'Times-Roman' 55 size 10,6 dl 3.5
set output "linuxtar_latency.eps"
set size 1.8,1.1

set tmargin 0
set rmargin 0
set bmargin 2
set lmargin 2
unset xtics
unset ytics

#TOP=1
#DY=0.105

#set xlabel "Day" offset 0, -1 font ', 70'
#set ylabel "New Data (GB)" offset 0.5, 0 font ', 70'
#set xtics 20 offset 0, -0.2
#set ytics 0.5 offset 0.5, 0

#set multiplot #layout 9,1 title "Daily Incremental Backup Size\n"
#set key autotitle column nobox samplen 1 noenhanced
unset title
set xlabel "File ID" offset 0,0.5
set ylabel "Read latency (sec)" offset 2
#set tmargin at screen TOP-8*DY
#set bmargin at screen TOP-9*DY
set yrange [0:20]
set xrange [1:315]
set ytics offset 0.6
set xtics 0,50,315 offset 0,0.4
set ytics 0,5,20
#set logscale y
set key top right box lw 2 reverse Left font ',55' width '2' samplen 4 spacing 1
#set ytics font "Times-Roman, 70" 

set style line 7 lw 2

#set style fill solid border 7
#set style data histogram
#set style histogram clustered gap 1

set style line 1 lt 1 lw 20 pt 7 ps 0 lc rgb "black"
set style line 2 lt 2 lw 20 pt 9 ps 0 lc rgb "red"
set style line 3 lt 3 lw 3.5 pt 11 ps 1 lc rgb "green"
set style line 4 lt 4 lw 3.5 pt 13 ps 1 lc rgb "blue"
set style line 5 lt 5 lw 3.5 pt 15 ps 1 lc rgb "yellow"
set style line 6 lt 6 lw 3.5 pt 17 ps 1 lc rgb "orange"
set style line 7 lt 7 lw 3.5 pt 19 ps 1 lc rgb "purple"
set style line 8 lt 8 lw 3.5 pt 21 ps 1 lc rgb "brown"
set style line 9 lt 9 lw 3.5 pt 23 ps 1 lc rgb "pink"

plot "linuxtar_latency.tsv" \
	using ($1):($2) title 'BASLINE' w lp ls 1, \
''	using ($1):($3) title 'EDP' w lp ls 2

#     "fsl_histo_EDP.tsv" using ($1*100):($2*100) every 100 title 'EDP' w lp ls 2
