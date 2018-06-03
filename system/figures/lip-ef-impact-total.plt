reset
load "config.plt"
#set size 0.3, 0.6
set terminal postscript size 1.4in,1.4in 
set output 'lip-ef-impact-total.eps'
set style histogram cluster gap 3
set style fill pattern 0 border -1
set style line 1 lt 1
set boxwidth 0.9
set style data histograms
set nokey
set ylabel "Speedup" offset 2,0 font "Helvetica,12"
#set logscale y
set yrange[0:5]
set xrange[-1:1]
set arrow from -1,1 to 1,1 nohead lt 0.5 lc rgb "black"
set arrow from -1,2 to 1,2 nohead lt 0.5 lc rgb "black"
set arrow from -1,3 to 1,3 nohead lt 0.5 lc rgb "black"
set arrow from -1,4 to 1,4 nohead lt 0.5 lc rgb "black"
set xtics font "Helvetica,12"
set ytics font "Helvetica,12"
unset mytics
plot 'lip-ef-impact-total.dat' using 2:xtic(1) ti col ls 1 lc rgb "#ef8a62" fill pattern 3,\
       '' u 3 ti col ls 1 lc rgb "#f7f7f7" fill pattern 1,\
       '' u 4 ti col ls 1 lc rgb "#67a9cf" fill pattern 3


