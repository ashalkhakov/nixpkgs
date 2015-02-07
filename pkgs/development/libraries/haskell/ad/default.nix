# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, comonad, dataReify, doctest, erf, filepath, free, nats
, reflection, tagged, transformers
}:

cabal.mkDerivation (self: {
  pname = "ad";
  version = "4.2.1";
  sha256 = "05ndr26lsc4xa18vfb3qdjcp03gsq2bhc8dc0yr5g1x9dybq6dx2";
  buildDepends = [
    comonad dataReify erf free nats reflection tagged transformers
  ];
  testDepends = [ doctest filepath ];
  meta = {
    homepage = "http://github.com/ekmett/ad";
    description = "Automatic Differentiation";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
