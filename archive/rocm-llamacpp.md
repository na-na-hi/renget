[Source](https://desuarchive.org/g/thread/99123975/#99130717)

First, find out the exact version of rocm you have installed. For 6 that's

cat /opt/rocm/.info/version

which for me is 6.0.0-91.
Then clone the githubs for rocBLAS, Tensile, and rocSPARSE. Then checkout the matching release for each folder.

git checkout release/rocm-rel-6.0


Since the installed rocBLAS has to be matched exactly accidentally checking out 6.0.2 for example would be bad.

I copied the rocSPARSE build commands from arch's PKGBUILD. This will overwrite the installed rocSPARSE with one compiled only for gfx1010.

CXXFLAGS="-fcf-protection=none"
cmake \
-Wno-dev \
-B build \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_CXX_COMPILER=/opt/rocm/bin/hipcc \
-DCMAKE_INSTALL_PREFIX=/opt/rocm \
-DAMDGPU_TARGETS=gfx1010
cmake --build build -j 8
sudo cmake --install build



Then for Tensile grab and apply this patch https://aur.archlinux.org/cgit/aur.git/tree/Tensile-fix-fallback-arch-build.patch?h=rocblas-gfx1010-backend
Then create a python environment and install requirements.txt. Then

python setup.py build

python setup.py install


Now run

TensileCreateLibrary --jobs 8 --code-object-version default --library-format msgpack --architecture gfx1010 --merge-files --separate-architectures --lazy-library-loading /rocBLAS/library/src/blas3/Tensile/Logic/asm_full ~/result HIP

with the first part of the first path replaced with where you cloned rocblas, and the second path is any folder to write the results to.
Finally in the ~/result/library folder there is a TensileLibrary_lazy_gfx1010.dat file. sudo cp that into /opt/rocm/lib/rocblas/library

Now llama.cpp should compile & run. Maybe make clean first, and then LLAMA_HIPBLAS=ON GPU_TARGETS=gfx1010 make main