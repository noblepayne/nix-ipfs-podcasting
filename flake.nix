{
  description = "IPFS Podcasting Node";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = ({ self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        {
          packages = { wget = pkgs.wget; };
          defaultPackage  = pkgs.wget;
        }
    )
  );
}
