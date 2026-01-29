let
  # nixos-25.11 from 2026-01-08:
  nixpkgs-version = "d351d065";
  nixpkgs = fetchTarball {
    name = "nixpkgs-${nixpkgs-version}";
    url = "https://github.com/NixOS/nixpkgs/archive/${nixpkgs-version}.tar.gz";
    sha256 = "049hhh8vny7nyd26dfv7i962jpg18xb5bg6cv126b8akw5grb0dg";
  };
  pkgs = (import nixpkgs {});
  gemset = import ./our_gemset.nix pkgs;

in

  pkgs.stdenvNoCC.mkDerivation {
    name = "shell";
    buildInputs = [
      gemset
    ];
  } // {
    # special environment for JUST the ruby dependency
    bundler = pkgs.mkShell {
      name = "bundler";
      packages = [
        gemset.ruby
      ];

      shellHook = ''
        echo "This shell is for running bundler to update Gemfile.lock."
        echo "Ruby version:" `ruby --version`
        echo "Bundler verison:" `bundler --version`
      '';
    };
  }
