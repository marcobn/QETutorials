# PURPOSE OF THE EXERCISE:
## Calculation of the total energy of Si using DFT with PBE0 hybrid functional
------------------------------------------------------------------------------------

**Steps to perform:**

1. Perform convergence tests of the total energy of Si using the 
   PBE0 functional and x_gamma_extrapolation = .true.
   Use q-point meshes 1x1x1, 2x2x2, 4x4x4, and 8x8x8

   pw.x < pw.Si.scf.in > pw.Si.scf.out

2. Perform convergence tests of the total energy of Si using the 
   PBE0 functional and x_gamma_extrapolation = .false.
   Use q-point meshes 1x1x1, 2x2x2, 4x4x4, and 8x8x8

   pw.x < pw.Si.scf.in > pw.Si.scf.out

   In which case the convergence is faster?   

