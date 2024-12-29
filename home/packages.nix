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
    protobuf
    cmake
    cargo-nextest
    gnupg
    terraform
  ];

  programs = {
  };
}
