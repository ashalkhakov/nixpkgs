# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, base64Bytestring, binary, dataDefault, doctest, mtl
, network, scientific, text, time, unorderedContainers, utf8String
, vector
}:

cabal.mkDerivation (self: {
  pname = "rethinkdb";
  version = "1.15.2.0";
  sha256 = "1cca6nrdaia5dgq2ah6sfr9qy01iasilw7zdw6k8vp5907alsh0f";
  buildDepends = [
    aeson base64Bytestring binary dataDefault mtl network scientific
    text time unorderedContainers utf8String vector
  ];
  testDepends = [ doctest ];
  jailbreak = true;
  doCheck = false;
  meta = {
    homepage = "http://github.com/atnnn/haskell-rethinkdb";
    description = "A driver for RethinkDB 1.15";
    license = self.stdenv.lib.licenses.asl20;
    platforms = self.ghc.meta.platforms;
  };
})
