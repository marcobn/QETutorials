# PURPOSE OF THE EXERCISE:
## How to perform a simple neb.x calculation
--------------------------------------------

In the NEB calculation one needs to specify at least two structures
(images), so called first- and last-image (i.e., reactant(s) and
product(s)).


### Example-1: neb.H2+H.in

This is a simple H transfer reaction, i.e., H + H2 --> H2 + H. In this
example only the first and last-images (`FIRST_IMAGE` and
`LAST_IMAGE`) are specified in the input. The reaction path is
discretized into seven images (`num_of_images = 7`) and the `neb.x`
code constructs the initial reaction path via linear interpolation
between the first- and last-image (seven images in total are
requested).

You can visualize the initial reaction path by:

     xcrysden --pwi neb.H2+H.in

To run the example, execute:

     neb.x -inp neb.H2+H.in > neb.H2+H.out &

When calculation finishes you can analyze the output (`neb.H2+H.out`);
check how many steps was needed to converge the calculation and what
is the reaction energy barrier. **BEWARE** that a lousy convergence
threshold is used (`path_thr = 0.1`) as to speed-up the calculation.

Profile of a converged minimum-energy-path can be plotted with gnuplot
as:

     gnuplot H2+H.gp

while the corresponding reaction-path structures can be visualized as:

     xcrysden --xyz H2+H.xyz
or

     xcrysden --axsf H2+H.axsf


### Example-2: neb.H2+H.w-inter-image.in

This examples is similar to the first example, with the exception
that now chemical intuition is used as to construct a better initial
reaction path. This is achieved by `INTERMEDIATE_IMAGE`: in this
example a rough guess for the transition-state is provided with the
`INTERMEDIATE_IMAGE`.

You can visualize the corresponding initial reaction path by:

     xcrysden --pwi neb.H2+H.w-inter-image.in

Can you spot the difference with respect to the first example?

To run the example, execute:

    neb.x -inp neb.H2+H.w-inter-image.in > neb.H2+H.w-inter-image.out &

When calculation finishes, analyze the output
(`neb.H2+H..w-inter-image.out`). You will notice that in this case much
smaller number of steps was needed to achieve convergence. Check if
the activation energy barrier is the same as in the first case?
