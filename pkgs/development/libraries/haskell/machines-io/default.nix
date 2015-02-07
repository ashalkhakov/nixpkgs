# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, chunkedData, machines, transformers }:

cabal.mkDerivation (self: {
  pname = "machines-io";
  version = "0.1.0.0";
  sha256 = "07ky1j9ihn493a8q2g1pc0ynam1mkzdi4hjs74kpfnlvl9x6ic7g";
  buildDepends = [ chunkedData machines transformers ];
  jailbreak = true;
  meta = {
    homepage = "http://github.com/aloiscochard/machines-io";
    description = "IO utilities for the machines library";
    license = self.stdenv.lib.licenses.asl20;
    platforms = self.ghc.meta.platforms;
  };
})
