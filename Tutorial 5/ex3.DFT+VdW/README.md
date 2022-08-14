# PURPOSE OF THE EXERCISE:
## DFT study of graphite using Van der Waals functionals
------------------------------------------------------------------------------------

**Steps to perform:**

1. Perform a SCF calculation using pw.x : pw.x < pw.graphite.scf.in > pw.graphite.scf.out 
 
   Check forces and stress. Which conclusions can you make?

2. Perform a variable-cell optimization : pw.x < pw.graphite.vc-relax.in > pw.graphite.vc-relax.out

   Study different cases:
   - input_dft = 'vdw-DF'    @PBE pseudo
   - input_dft = 'vdw-DF2'   @PBE pseudo
   - input_dft = 'LDA'       @PBE pseudo
   - Normal PBE calculation  @PBE pseudo
   - vdw_corr  = 'Grimme-D2' @PBE pseudo
   - Normal LDA calculation  @LDA pseudo

   Compare the inter-layer distances and total energies. Which conclusions can you make?

