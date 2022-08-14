set samples 50
set isosamples 50
set contour
set pm3d interpolate 5,5 map
set palette file "-"
0 0 0.5
0.5 0.5 1
1 1 1
1 0.5 0.5
0.5 0 0
end

E0=-253.16558616

set title "{/Symbol D} Energy (Ry)"
set xlabel "A (angstrom)"
set ylabel "C (angstrom)"
set clabel "%5.2f"
set cbtics 0.0,0.004,0.02
set cbrange [0.0:0.02]
set contour base
set cntrparam cubicspline levels incremental 0.0,0.004,0.02
set format x "%.2f"
set format y "%.1f"
set format cb "%.3f"
set xrange [2.4:2.8]
set yrange [4.8:5.6]

set xtics 2.4, 0.05
set ytics 4.7, 0.1
splot 'Zn-energies.dat' u 1:2:($3-E0) notitle with pm3d lt 1 lw 2
pause -1
