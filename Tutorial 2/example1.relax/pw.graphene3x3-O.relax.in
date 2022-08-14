 &CONTROL
    calculation = 'relax',
    prefix      = 'Graphene3x3-O_PBE',
    !outdir      = '/tmp',
    !pseudo_dir  = 'directory with pseudopotentials',        
 /
 &SYSTEM
    ibrav     = 4,
    celldm(1) = 13.962,
    celldm(3) = 1.0,
    nat  = 19,
    ntyp = 2,
    ecutwfc = 20.0,
    ecutrho = 200.0, 

    occupations = 'smearing',
    smearing = 'm-v',
    degauss = 0.01,
 /
 &ELECTRONS
    conv_thr = 1.0d-8
 /
 &IONS
 /

ATOMIC_SPECIES
   C  12.0107 C.pbe-rrkjus.UPF
   O  16.0    O.pbe-rrkjus.UPF
   
ATOMIC_POSITIONS angstrom
   C   0.00000000   0.00000000   0.000
   C  -1.23139488   2.13283849   0.000
   C  -2.46278976   4.26567699   0.000
   C   2.46278976   0.00000000   0.000
   C   1.23139488   2.13283849   0.000
   C   0.00000000   4.26567699   0.000
   C   4.92557952   0.00000000   0.000
   C   3.69418464   2.13283849   0.000
   C   2.46278976   4.26567699   0.000
   C   0.00000000   1.42189241   0.000
   C  -1.23139488   3.55473090   0.000
   C  -2.46278976   5.68756939   0.000
   C   2.46278976   1.42189241   0.000
   C   1.23139488   3.55473090   0.000
   C   0.00000000   5.68756939   0.000
   C   4.92557952   1.42189241   0.000
   C   3.69418464   3.55473090   0.000
   C   2.46278976   5.68756939   0.000
   O   1.23147      2.84396       1.31

K_POINTS gamma

# Remark: "3 3 1  0 0 0" k-mesh of (3x3) supecell is equivalent to
# "9 9 1  0 0 0" k-mesh of (1x1) unit-cell but we use "K_POINTS gamma" to speed-up   
#K_POINTS automatic
# 3 3 1 0 0 0
