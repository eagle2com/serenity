with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "cpp-env";
  nativeBuildInputs = [
    gcc10
    curl
    cmake
    mpfr
    ninja
    gmp
    libmpc
    e2fsprogs
    patch

    # Example Build-time Additional Dependencies
    pkgconfig
  ];
  buildInputs = [
    # Example Run-time Additional Dependencies
    openssl
    x11
    # glibc
  ];
  hardeningDisable = [ "format" "fortify" ];
}

