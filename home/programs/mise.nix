# See: https://github.com/nix-community/home-manager/blob/master/modules/programs/mise.nixhttps://github.com/nix-community/home-manager/blob/master/modules/programs/mise.nix
{ config, pkgs, ... }: {
  programs.mise = {
    enable = true;
    globalConfig = {
      tools = {
        go = ["1.22.2"];
        rust = ["1.78.0"];
      };
    };
  };
}