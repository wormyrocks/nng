source ~/env_setup.sh
mkdir -p build
cd build
cmake -G "MinGW Makefiles" .. -DNNG_STATIC_LIB=ON -DBUILD_SHARED_LIBS=OFF -DNNG_ENABLE_HTTP=ON
cmake ..
mingw32-make nng
