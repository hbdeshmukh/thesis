reset
load "config.plt"
#set size 0.3, 0.6
set terminal postscript size 1.4in,1.4in 
set output 'ssb-sf100-storage-format-comparison-total.eps'
set style histogram cluster gap 1
set style fill pattern 0 border -1
set style line 1 lt 1
set boxwidth 1
set style data histograms
set nokey
set ylabel "Speedup over\n row store" offset 2,0 font "Helvetica,12"
#set logscale y
set yrange[0:4]
set xrange[-1:1]
set arrow from -1,1 to 1,1 nohead lt 0.5 lc rgb "black"
set arrow from -1,2 to 1,2 nohead lt 0.5 lc rgb "black"
set arrow from -1,3 to 1,3 nohead lt 0.5 lc rgb "black"
set xtics font "Helvetica,12"
set ytics 1 font "Helvetica,12"
unset mytics
plot 'ssb-sf100-storage-format-comparison-total.dat' using 2:xtic(1) ti col ls 1 lc rgb "black" fill pattern 3

