source ~/env_setup.sh
mkdir -p build
cd build
cmake -G "MinGW Makefiles" .. -DNNG_STATIC_LIB=ON -DBUILD_SHARED_LIBS=OFF -DNNG_ENABLE_TLS=ON -DNNG_TOOLS=OFF -DNNG_TESTS=ON -DMBEDTLS_ROOT_DIR=../mbedtls -DMBEDTLS_INCLUDE_DIR=../mbedtls -DMBEDTLS_CRYPTO_LIBRARY=../mbedtls/libmbedcrypto.a -DMBEDTLS_TLS_LIBRARY=../mbedtls/libmbedtls.a -DMBEDTLS_X509_LIBRARY=../mbedtls/libmbedx509.a
cmake ..
mingw32-make nng
