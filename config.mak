STAT = -Bstatic
FLAG = -g0 -O2 -fno-align-functions -fno-align-jumps -fno-align-loops -fno-align-labels

ifneq ($(NATIVE),)
COMMON_CONFIG += CC="$(HOST)-gcc ${STAT}" CXX="$(HOST)-g++ ${STAT}" FC="$(HOST)-gfortran ${STAT}"
else
COMMON_CONFIG += CC="gcc ${STAT}" CXX="g++ ${STAT}" FC="gfortran ${STAT}"
endif

COMMON_CONFIG += CFLAGS="${FLAG}" CXXFLAGS="${FLAG}" FFLAGS="${FLAG}" LDFLAGS="-s ${STAT}"

GCC_VER = 9.3.0
BINUTILS_VER = 2.34

# downgraded to match rust's embedded version -cpick
# https://github.com/rust-lang/rust/blob/1.51.0/src/ci/docker/scripts/musl.sh#L28
MUSL_VER = 1.1.24

GMP_VER = 6.2.0
MPC_VER = 1.1.0
MPFR_VER = 4.0.2

LINUX_VER = 5.4.50

# added -cpick
TARGET = arm-linux-musleabihf
