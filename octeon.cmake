# the name of the target operating system
set(CMAKE_SYSTEM_NAME Linux)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER   mips64-octeon-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER mips64-octeon-linux-gnu-g++)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DOCTEON_TARGET=linux_64 -I/root/cross-compile/usr/local/include -DOCTEON_OPENSSL -DUSE_RUNTIME_MODEL_CHECKS=1 -DCVMX_ENABLE_PARAMETER_CHECKING=0 -DCVMX_ENABLE_CSR_ADDRESS_CHECKING=0 -DCVMX_ENABLE_POW_CHECKS=0 -DOCTEON_MODEL=OCTEON_CN50XX -DCVMX_USE_1_TO_1_TLB_MAPPINGS=0 -DOCTEON_TARGET=linux_64 -mabi=64 -march=octeon -DCVMX_LLM_NUM_PORTS=1 -Dmain=main")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DOCTEON_TARGET=linux_64 -I/root/cross-compile/usr/local/include -DOCTEON_OPENSSL -DUSE_RUNTIME_MODEL_CHECKS=1 -DCVMX_ENABLE_PARAMETER_CHECKING=0 -DCVMX_ENABLE_CSR_ADDRESS_CHECKING=0 -DCVMX_ENABLE_POW_CHECKS=0 -DOCTEON_MODEL=OCTEON_CN50XX -DCVMX_USE_1_TO_1_TLB_MAPPINGS=0 -DOCTEON_TARGET=linux_64 -mabi=64 -march=octeon -DCVMX_LLM_NUM_PORTS=1 -Dmain=main")

set(CMAKE_EXE_LINKER_FLAGS "-DOCTEON_TARGET=linux_64 -L/root/OCTEON-SDK/executive/obj-linux_64-octeon -L/root/cross-compile/usr/local/lib -L/root/OCTEON-SDK/executive/obj-linux_64-octeon   -march=octeon -mabi=64 -static -lrt -Xlinker -T -Xlinker /root/OCTEON-SDK/target/lib/cvmx-shared-linux.ld -Dmain=main")

# where is the target environment located
set(CMAKE_FIND_ROOT_PATH  /root/cross-compile/usr/local)
set(BOOST_ROOT /root/cross-compile/usr/local)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)