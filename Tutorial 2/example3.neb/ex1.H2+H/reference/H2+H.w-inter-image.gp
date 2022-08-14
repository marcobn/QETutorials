set encoding iso_8859_1
set xlabel "Reaction coordinate / arb. u."
set ylabel "E - E_{IS} / eV"
set format y "%.2f"

set grid xtics ytics

set xzeroaxis lt -1
plot  [0:1][:] \
      'H2+H.w-inter-image.int' notitle w l lt 2 lw 4, \
      'H2+H.w-inter-image.dat' notitle w points lt 1 pt 7 ps 1.5
pause -1
