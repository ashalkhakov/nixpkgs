{ stdenv, fetchurl, coreutils, python, duplicity, gawk, gnupg1, bash
, gnugrep, txt2man, makeWrapper, which
}:

stdenv.mkDerivation {
  name = "duply-1.9.1";

  src = fetchurl {
    url = "mirror://sourceforge/project/ftplicity/duply%20%28simple%20duplicity%29/1.9.x/duply_1.9.1.tgz";
    sha256 = "1igg8nc0i1xn8k1xxmphsg019b1yx8ln86hhqm6f4pd565d1rwg5";
  };

  buildInputs = [ txt2man makeWrapper ];

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p "$out/bin"
    mkdir -p "$out/share/man/man1"
    sed -i 's|/usr/bin/env bash|${bash}/bin/bash|' duply
    mv duply "$out/bin"
    wrapProgram "$out/bin/duply" --set PATH \
        "${coreutils}/bin:${python}/bin:${duplicity}/bin:${gawk}/bin:${gnupg1}/bin:${bash}/bin:${gnugrep}/bin:${txt2man}/bin:${which}/bin"
    "$out/bin/duply" txt2man | gzip -c > "$out/share/man/man1/duply.1.gz"
  '';

  meta = with stdenv.lib; {
    description = "Shell front end for the duplicity backup tool";
    longDescription = ''
      Duply is a shell front end for the duplicity backup tool
      http://duplicity.nongnu.org/. It greatly simplifies it's usage by
      implementing backup job profiles, batch commands and more. Who says
      secure backups on non-trusted spaces are no child's play?
    '';
    homepage = http://duply.net/;
    license = licenses.gpl2;
    maintainers = [ maintainers.bjornfor ];
    platforms = platforms.linux;
  };
}
