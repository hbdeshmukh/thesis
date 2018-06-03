reset
load "config.plt"
#set size 1.2, 0.6
set output 'lip-ef-impact.eps'
set terminal postscript size 5.5in, 1.4in
set style histogram cluster gap 2
set style fill pattern 0 border -1
set style line 1 lt 1
set boxwidth 0.9
set style data histograms
#set key center horizontal top  width -1
set key left horizontal top Right width -1 font "Helvetica,12"
set ylabel "Speedup" offset 1,0 font "Helvetica,12"
set yrange[0:5]
set xrange[-1:13]
set ytics 0,1 font "Helvetica,12"
set xtics font "Helvetica,12"
set arrow from -1,1 to 13,1 nohead lt 0.5 lc rgb "black"
set arrow from -1,2 to 13,2 nohead lt 0.5 lc rgb "black"
set arrow from -1,3 to 13,3 nohead lt 0.5 lc rgb "black"
set arrow from -1,4 to 13,4 nohead lt 0.5 lc rgb "black"
set arrow from -1,5 to 13,5 nohead lt 0.5 lc rgb "black"
plot 'lip-ef-impact.dat' using 2:xtic(1) ti col ls 1 lc rgb "#ef8a62" fill pattern 3,\
       '' u 3 ti col ls 1 lc rgb "#f7f7f7" fill pattern 1,\
       '' u 4 ti col ls 1 lc rgb "#67a9cf" fill pattern 3
