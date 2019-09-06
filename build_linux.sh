mkdir -p build
cd build
cmake .. -DNNG_STATIC_LIB=ON -DBUILD_SHARED_LIBS=OFF -DNNG_ENABLE_TLS=ON -DNNG_TOOLS=OFF -DNNG_TESTS=OFF -DMBEDTLS_ROOT_DIR=../mbedtls -DMBEDTLS_INCLUDE_DIR=../mbedtls -DMBEDTLS_CRYPTO_LIBRARY=../mbedtls/linux/libmbedcrypto.a -DMBEDTLS_TLS_LIBRARY=../mbedtls/linux/libmbedtls.a -DMBEDTLS_X509_LIBRARY=../mbedtls/linux/libmbedx509.a -DNNG_ENABLE_NNGCAT=ON
cmake ..
make nng nngcat
