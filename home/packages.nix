{
  config,
  pkgs,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Tools
    fzf
    jq
  ];

  programs = {
  };
}
