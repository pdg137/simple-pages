pkgs:

let

  gemset = import ./build_gemset.nix pkgs {
    # If you update Gemfile.lock, you will need to revise this hash.
    hash = "sha256-3dXVAKLxmc1VqvV79kAJbZlM545PyhDHqq7Jt3rU9zc=";
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
  };

in

  pkgs.bundlerEnv {
    name = "bundler-env";
    ruby = pkgs.ruby_3_4;

    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = gemset.outPath;
  }
