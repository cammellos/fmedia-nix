 { stdenv, lib
, pkgs
, fetchurl
, autoPatchelfHook
}:

stdenv.mkDerivation rec {
  pname = "fmedia";
  version = "1.31";

  src = fetchurl {
    url = "https://github.com/stsaz/fmedia/releases/download/v${version}/fmedia-${version}-linux-amd64.tar.xz";
    hash = "sha256-nyNHsDFidbCB6Y/qrtixfEdQwoVfhWBrebJvbmK6irA=";
  };

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  buildInputs = [
    pkgs.gtk3.dev
    pkgs.alsa-lib.dev
    pkgs.pulseaudio.dev
    pkgs.jack2.dev
  ];

  sourceRoot = ".";

  #unpackPhase = ":";

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    tar Jxf $src -C $out/bin
    ln -s $out/bin/fmedia-1/fmedia $out/bin/fmedia
    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://github.com/stsaz/fmedia";
    description = "Fast audio player, recorder, converter for Windows, Linux & Android.";
    platforms = platforms.linux;
  };
}
