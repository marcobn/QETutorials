# PURPOSE OF THE EXERCISE:
## How to perform a non-trivial neb.x calculation
-------------------------------------------------

In this example we will use **intermediate-image** and also split NEB
calculation into two steps as to aid in convergence.

The problem with climbing-image NEB (CI-NEB) calculation is that at
the beginning we do not know which image is the climbing-image
(i.e. the image with the highest energy) and, moreover, when the
reaction-path is far from convergence, the ID of image with the
highest energy can change from iteration to iteration. Hence, it is
better to first perform a few steps of plain NEB (`CI_scheme = 'no-CI'`)
as to as to stabilize a bit the reaction path and only then to switch
on the "climbing-image NEB" (`CI_scheme = 'auto'`).

These two tasks (plain NEB and CI-NEB) can be elegantly performed by
PWTK script. 

**Steps to perform:**

1. Read the `neb.H2-diss.Al100-2x1-2L.in` input file and try to
   understand it (this input file will be used by the PWTK
   script). The initial reaction path can be visualized by:

        xcrysden --pwi neb.H2-diss.Al100-2x1-2L.in


2. Read the `neb.pwtk` script and try to understand it.  **BEWARE**
   that a lousy convergence threshold is used for CI-NEB calculation
   (`path_thr = 0.2`) as to speed-up the calculation.


3. The example be run by `pwtk neb.pwtk >& neb.log &`.  **BUT
   BEWARE:** this example takes **several tens of minutes** on a laptop
   computer, hence run it remotely on the HCP cluster. To submit the
   `neb.pwtk` calculation to the HCP cluster, use:
   
        remote_pwtk neb.pwtk
		
	To download the calculated output files, use:
	
	    rsync_from_nsc '*.out'
		
    But wait some time before doing that; give the remote computer
	some time to make the calculation. To download other data files
	that were produced by `neb.x`, use:
	
	    rsync_from_nsc .

4. When calculation finishes you can analyze the outputs
   (`neb.noCI.out` and `neb.auto.out`); check how many steps was
   needed to converge the calculation (see file `neb.auto.out`) and
   what is the reaction energy barrier. Converged minimum-energy-path
   graph can be plotted with gnuplot as:

        gnuplot H2-diss.Al100-2x1-2L.gp

   while the corresponding reaction-path structures can be visualized as:

        xcrysden --axsf H2-diss.Al100-2x1-2L.axsf
