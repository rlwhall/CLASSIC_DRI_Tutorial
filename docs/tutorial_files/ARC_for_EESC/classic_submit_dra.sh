#!/bin/sh
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --time=00:30:00
#SBATCH --mem=2G

module load gcc
module load openmpi
module load cdo
module load nco
module load netcdf-fortran-mpi
module load hdf5-mpi

# point locations uses longitude/latitude
project/def-sponsor00/ARC_for_EESC/CLASSIC/bin/CLASSIC_parallel /project/def-sponsor00/user01/job_options.txt -82.156/48.217