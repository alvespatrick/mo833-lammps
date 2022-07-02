mkdir build 

docker run --rm --user=$(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd)/utils ubuntu:mpi-dev make -j 2

docker run --rm --user=$(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd)/build ubuntu:mpi-dev cmake ../cmake/ -DCMAKE_BUILD_TYPE=Release  -DPKG_KSPACE=on -DPKG_MANYBODY=on -DPKG_RIGID=on -DPKG_MISC=on -DPKG_MOLECULE=on -DBUILD_MPI=on -DPKG_GRANULAR=on -DMPI_C_COMPILER=mpicc -DMPI_CXX_COMPILER=mpic++ -DBUILD_OMP=on

docker run --rm --user=$(id -u):$(id -g) -v $(pwd):$(pwd) -w $(pwd)/build ubuntu:mpi-dev make -j 4