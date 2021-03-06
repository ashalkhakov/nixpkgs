# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, diagramsLib, diagramsSvg, filepath, ghcEvents, lens, mtl
, optparseApplicative, parsec, SVGFonts, thLift, transformers
}:

cabal.mkDerivation (self: {
  pname = "ghc-events-analyze";
  version = "0.2.1";
  sha256 = "0lf063p2wj2d1hxb5hx4bcid3a3ni3g9x8sglm5q5kfbmdk7awj4";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    diagramsLib diagramsSvg filepath ghcEvents lens mtl
    optparseApplicative parsec SVGFonts thLift transformers
  ];
  meta = {
    description = "Analyze and visualize event logs";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    hydraPlatforms = self.stdenv.lib.platforms.none;
    broken = true;
  };
})
