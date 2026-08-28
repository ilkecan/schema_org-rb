{ pkgs, lib, config, inputs, ... }:

let
  inherit (builtins)
    concatStringsSep
  ;
in

{
  env = {
    BUNDLE_CACHE_ALL = true;
    BUNDLE_IGNORE_FUNDING_REQUESTS = true;
    RUBYOPT = concatStringsSep " " [
      "-W1"
      "-W:deprecated"
      "-W:experimental"
      "-W:performance"
    ];
  };

  packages = with pkgs; [
    just
    libyaml.dev # psych gem
  ];

  # https://devenv.sh/languages/
  languages.ruby = {
    enable = true;
    version = "4.0.6";
  };

  tasks = {
    "env:MAKEFLAGS" = {
      exec = ''
        cpus=$(nproc)
        export MAKEFLAGS="--jobs=$cpus --load-average=$cpus --output-sync=target"
      '';
      exports = [ "MAKEFLAGS" ];
      before = [ "devenv:enterShell" ];
    };
  };
}
