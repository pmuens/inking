let
 moz_overlay = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
  nixpkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
  rust-nightly = with nixpkgs; ((rustChannelOf { date = "2020-10-06"; channel = "nightly"; }).rust.override {
    extensions = [ "rust-src" ];
    targets = [ "wasm32-unknown-unknown" ];
  });
in
with nixpkgs; pkgs.mkShell {
  buildInputs = [
    clang
    cmake
    pkg-config
    rust-nightly
  ] ++ stdenv.lib.optionals stdenv.isDarwin [
    darwin.apple_sdk.frameworks.Security
  ];

  LIBCLANG_PATH = "${llvmPackages.libclang}/lib";
  PROTOC = "${protobuf}/bin/protoc";
  ROCKSDB_LIB_DIR = "${rocksdb}/lib";
}
