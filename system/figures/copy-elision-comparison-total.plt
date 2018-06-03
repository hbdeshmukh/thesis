reset
load "config.plt"
#set size 0.3, 0.6
set terminal postscript size 1.4in,1.4in 
set output 'copy-elision-comparison-total.eps'
set style histogram cluster gap 2
set style fill pattern 0 border -1
set style line 1 lt 1
set boxwidth 0.9
set style data histograms
set ylabel "Speedup over 'Basic'" offset 1,0 font "Helvetica,12"
set nokey
#set logscale y
set yrange[0:2.5]
set xrange[-1:1]
set arrow from -1,1 to 1,1 nohead lt 0.5 lc rgb "black"
set arrow from -1,2 to 1,2 nohead lt 0.5 lc rgb "black"
set xtics font "Helvetica,12"
set ytics 1 font "Helvetica,12"
unset mytics
plot 'copy-elision-comparison-total.dat' using 2:xtic(1) ti col ls 1 lc rgb "black" fill pattern 3
