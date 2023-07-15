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
            pname = "undollar";
            version = "0.0.1";
            src = self;
            nativeBuildInputs = [ cmake ];
            meta = with lib; {
              homepage = "https://github.com/Freed-Wu/undollar";
              description = "strip the dollar sign from the beginning of the terminal command";
              license = licenses.gpl3;
              maintainers = with maintainers; [ Freed-Wu ];
              platforms = platforms.unix;
            };
          };
        }
      );
}
