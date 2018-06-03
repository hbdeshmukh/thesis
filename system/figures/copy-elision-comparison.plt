reset
load "config.plt"
#set size 1.5, 0.4
set terminal postscript size 5.5in, 1.4in
set output 'copy-elision-comparison.eps'
set style histogram cluster gap 1
set style fill pattern 0 border -1
set style line 1 lt 1
set boxwidth 0.8
set style data histograms
#set key right top samplen 2.5 horizontal width 0 
#set key right horizontal top  width -1 font "Helvetica,12"
set nokey
set ylabel "Speedup over 'Basic'" offset 1,0 font "Helvetica,12"
#set xlabel "SSB queries"
set yrange[0:2.5]
set xrange[-0.6:13]
set arrow from -0.6,1 to 13,1 nohead lt 0.5 lc rgb "black"
set arrow from -0.6,2 to 13,2 nohead lt 0.5 lc rgb "black"
set xtics font "Helvetica,12"
set ytics 1 font "Helvetica,12"
unset mytics
plot 'copy-elision-comparison.dat' using 2:xtic(1) ti col ls 1 lc rgb "black" fill pattern 3
