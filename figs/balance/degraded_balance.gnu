#!/usr/bin/gnuplot

set terminal postscript enhanced portrait 'Times-Roman' 65 size 10,7 dl 3.5
set output "degraded_balance.eps"
set size 1.8,1.1

set tmargin 1
set rmargin 0.5
set bmargin 1.5
set lmargin 5
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
set xlabel "(N,n,k)" offset 0,1
set ylabel "Gap (%)" offset 2
#set tmargin at screen TOP-8*DY
#set bmargin at screen TOP-9*DY
set yrange [0:35]
set xrange [-0.5:4.5]
set ytics 0,5,35 offset 0.5
set xtics ('(10,8,6)' 0, '(11,9,7)' 1, '(12,10,8)' 2, '(13,11,9)' 3, '(14,12,10)' 4) font ',55' offset 0,0.5

set key top right horizontal maxcols 4 maxrows 1 Left nobox reverse samplen 3 font ', 65' width '0'
#set key top right reverse Left font ',65' samplen 3 spacing 1
#set ytics font "Times-Roman, 70" 

set style line 7 lw 2

#set style fill solid border 7
#set style data histogram
#set style histogram clustered gap 1

set style line 1 lt 1 lw 10 pt 7 ps 5 lc rgb "black"
set style line 2 lt 2 lw 10 pt 9 ps 5 lc rgb "red"
set style line 3 lt 3 lw 6 pt 11 ps 2 lc rgb "green"
set style line 4 lt 4 lw 6 pt 13 ps 2 lc rgb "blue"
set style line 5 lt 5 lw 6 pt 15 ps 2 lc rgb "yellow"
set style line 6 lt 6 lw 6 pt 17 ps 2 lc rgb "orange"
set style line 7 lt 7 lw 3.5 pt 19 ps 1 lc rgb "purple"
set style line 8 lt 8 lw 3.5 pt 21 ps 1 lc rgb "brown"
set style line 9 lt 9 lw 3.5 pt 23 ps 1 lc rgb "pink"

plot "degraded_balance.tsv" \
	using 1:($2*100) title 'Baseline' w lp ls 1, \
''	using 1:($3*100) title 'EDP' w lp ls 2
