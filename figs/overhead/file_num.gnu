#!/usr/bin/gnuplot

set terminal postscript enhanced portrait 'Times-Roman' 60 size 10,6 dl 3.5
set output "file_num.eps"
set size 1.8,1.1

set tmargin 0
set rmargin 0
set bmargin 1.5
set lmargin 1
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
set xlabel 'Number of Files' offset 0,1
set ylabel 'Time (sec)' offset 3.5
#set tmargin at screen TOP-8*DY
#set bmargin at screen TOP-9*DY
set yrange [0.001:1]
set xrange [1:2500]
set ytics offset 0.6
#set xtics ('1' 0, '16' 1, '64' 2, '320' 3, '960' 4) offset 0,0.5
set xtics offset 0,0.5
set logscale y
set logscale x

set key top left box lw 2 reverse Left font ',60' samplen 4 spacing 1
#set ytics font "Times-Roman, 70" 

set style line 7 lw 2

#set style fill solid border 7
#set style data histogram
#set style histogram clustered gap 1

set style line 1 lt 1 lw 20 pt 7 ps 7 lc rgb "black"
set style line 2 lt 2 lw 20 pt 9 ps 7 lc rgb "red"
set style line 3 lt 3 lw 3.5 pt 11 ps 1 lc rgb "green"
set style line 4 lt 4 lw 3.5 pt 13 ps 1 lc rgb "blue"
set style line 5 lt 5 lw 3.5 pt 15 ps 1 lc rgb "yellow"
set style line 6 lt 6 lw 3.5 pt 17 ps 1 lc rgb "orange"
set style line 7 lt 7 lw 3.5 pt 19 ps 1 lc rgb "purple"
set style line 8 lt 8 lw 3.5 pt 21 ps 1 lc rgb "brown"
set style line 9 lt 9 lw 3.5 pt 23 ps 1 lc rgb "pink"

plot "file_num.tsv" \
	using ($1):($2) title 'Baseline' w lp ls 1, \
''	using ($1):($3) title 'EDP' w lp ls 2
