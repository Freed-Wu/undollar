{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        with nixpkgs.legacyPackages.${system};
        {
          formatter = nixpkgs-fmt;
          packages.default = stdenv.mkDerivation rec {
            name = "undollar";
            src = self;
            nativeBuildInputs = [ cmake ];
            meta = {
              mainProgram = "$";
            };
          };
        }
      );
}
