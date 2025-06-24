{stdenv}:
stdenv.mkDerivation {
  name = "plymouth-bad-apple";
  version = "1.0.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/share/plymouth/themes/bad_apple
    cp -r ./* $out/share/plymouth/themes/bad_apple
    sed -i "s@\/usr@$out@" $out/share/plymouth/themes/bad_apple/bad_apple.plymouth
  '';
}
