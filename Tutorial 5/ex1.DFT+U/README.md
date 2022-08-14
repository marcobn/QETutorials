# PURPOSE OF THE EXERCISE:
## Calculation of the projected density of states (PDOS) of FeO using DFT and DFT+U
------------------------------------------------------------------------------------

**Steps to perform:**

1. Standard DFT case

   Perform a SCF calculation using pw.x :          pw.x < pw.FeO.scf.in > pw.FeO.scf.out

   Perform a NSCF calculation using pw.x :         pw.x < pw.FeO.nscf.in > pw.FeO.nscf.out

   Perform a calculation of PDOS using projwfc.x : projwfc.x < projwfc.FeO.in > projwfc.FeO.out 

   Plot PDOS using the script for gnuplot:         gnuplot -> load "plot_pdos.gnu"   

2. DFT+U case

   Modify input files pw.FeO.scf.in and pw.FeO.nscf.in
   by setting the following:

   Hubbard_U(1) = 5.2

   Hubbard_U(2) = 5.2

   Here, Hubbard_U(1) and Hubbard_U(2) are the Hubbard parameters 
   for Fe1-3d and Fe2-3d states (in eV). 
   The value of U = 5.2 eV was chosen for demonstration purposes;
   Hubbard U can be computed ab initio (see e.g. PRB 98, 085127 (2018)).

   Repeat all steps as in 1), and ultimately determine PDOS in the DFT+U case.
   
   Note: change the value of the Fermi energy in "plot_pdos.gnu",
   you can find the value of the Fermi energy at the end of the file pw.FeO.scf.out. 

3. DFT+U case (with the starting_ns_eigenvalue option)

   Modify the input file pw.FeO.scf.in by setting the following:

   starting_ns_eigenvalue(5,2,1) = 1.0
 
   starting_ns_eigenvalue(5,1,2) = 1.0 

   Repeat all steps as in 1), and ultimately determine PDOS in the DFT+U case 
   (with the starting_ns_eigenvalue option).

   Note: change the value of the Fermi energy in "plot_pdos.gnu",
   you can find the value of the Fermi energy at the end of the file pw.FeO.scf.out.
