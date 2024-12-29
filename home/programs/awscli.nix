{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awscli
  ];
  home.file.".aws/config".source = ./.awsconfig;
  home.file.".aws/credentials".source = ./.awscredentials;
}
