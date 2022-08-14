set xrange [0:4.280239] 
set yrange [0:500]
set ylabel "frequency (cm^{-1})"
set noxtics
set label "Ni" at 0.4,400
set arrow from 1.0,0.0 to 1.0,500.0 nohead lw 2
set arrow from 1.5,0.0 to 1.5,500.0 nohead lw 2
set arrow from 2.0,0.0 to 2.0,500.0 nohead lw 2
set arrow from 3.414214,0.0 to 3.414214,500.0 nohead lw 2

plot "ni.dat" w l lw 2
replot "ni.exp" u 1:($2*33.3) w p 2 7
replot "ni.exp" u 1:($3*33.3) w p 2 7
replot "ni.exp" u 1:($4*33.3) w p 2 7
