{ config, pkgs, lib, ... }:

{
  home = {
    username = "taisho6339";
    homeDirectory = "/Users/taisho6339";
    stateVersion = "23.05";
    sessionVariables = {
      ERL_AFLAGS = "-kernel shell_history enabled";
    };
  };

  programs.home-manager.enable = true;

  imports = map (x: ./home + x) [
    /homebrew.nix
    /packages.nix
    /programs/mise.nix
    /programs/git.nix
    /programs/zsh.nix
  ];
}