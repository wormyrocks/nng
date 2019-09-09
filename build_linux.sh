mkdir -p build
cd build
cmake .. -DNNG_STATIC_LIB=ON -DBUILD_SHARED_LIBS=OFF -DNNG_TOOLS=OFF -DNNG_TESTS=OFF -DNNG_ENABLE_NNGCAT=ON
cmake ..
make nng nngcat
