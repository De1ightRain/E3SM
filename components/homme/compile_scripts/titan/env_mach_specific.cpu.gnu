#! /bin/bash -f

#===============================================================================
# Titan machine specific settings
#===============================================================================

#-------------------------------------------------------------------------------
# Modules
#-------------------------------------------------------------------------------

  module rm PrgEnv-intel
  module rm pgi
  module rm PrgEnv-pgi
  module rm PrgEnv-cray
  module rm PrgEnv-gnu
  module rm PrgEnv-pathscale
  module rm intel
  module rm pgi
  module rm cray
  module rm pathscale
  module rm parallel-netcdf
  module rm netcdf
  module rm cmake
  module rm cray-mpich2
  module rm cray-libsci
  module rm xt-libsci
  module rm cray-netcdf
  module rm cray-netcdf-hdf5parallel
  module rm cray-parallel-netcdf
  module rm cray-hdf5-parallel

  module load PrgEnv-gnu/5.2.82
  module switch cray-mpich cray-mpich/7.6.3
  module switch cray-libsci cray-libsci/16.11.1
  module switch atp atp/2.1.1
  #-module add cudatoolkit
  #-export CRAY_CUDA_MPS=1

  export CRAY_CPU_TARGET=istanbul
#  export CRAYPE_LINK_TYPE='dynamic'
  module load cray-netcdf-hdf5parallel/4.4.1.1.3
  module load cray-parallel-netcdf/1.8.1.3
  module load cray-trilinos
  module load curl/7.50.3
  module load subversion
  module load cmake3/3.9.0
  module load python

module list

ulimit -c unlimited
ulimit -s unlimited

# The environment variable below increase the stack size, which is necessary for
# CICE to run threaded on this machine. 
export MPSTKZ=64M
export OMP_STACKSIZE=64M

# Capture logical to physics PE assignment and active environment variable 
# settings
export MPICH_ENV_DISPLAY=1
export MPICH_VERSION_DISPLAY=1
export MPICH_CPUMASK_DISPLAY=1
# export MPICH_RANK_REORDER_DISPLAY=1
