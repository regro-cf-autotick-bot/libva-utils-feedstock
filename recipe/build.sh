# https://01.org/linuxgraphics/documentation/build-guide-0
# Maybe these cflags can be removed with the new compilers
set -ev
CFLAGS="${CFLAGS} -std=c99 -lrt"
CXXFLAGS="${CXXFLAGS} -lrt"

./autogen.sh --prefix=$PREFIX
make -j$(nproc) install
set +ev
