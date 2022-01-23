{ pkgs ? import <nixos> {} }:

with pkgs;

mkShell {
  buildInputs = [
    gcc11
    # glibc
    zlib
    bzip2
    gettext
    ncurses
    SDL2
    SDL2_image
    SDL2_ttf
    SDL2_mixer
    freetype
    ncurses

    # nixos specific
    astyle
    ccache
    pkg-config
  ];

  shellHook = ''
    alias compile='make -j4 CCACHE=1 NATIVE=linux64 RELEASE=1 TILES=1'
  '';
}
