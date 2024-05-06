{ config, pkgs, lib, ... }:

let
  taps = [
    "homebrew/bundle"
    "homebrew/cask-versions"
    "homebrew/services"
  ];

  brews = [ "mise" ];

  casks = [
    "appcleaner"
    "docker"
    "raycast"
    "slack"
    "visual-studio-code"
    "zoom"
    "google-chrome"
    "bettertouchtool"
    "xcodes"
  ];
in with lib; {
  home.sessionPath = [ "/opt/homebrew/bin" ];

  home.file.".Brewfile" = {
    text = (concatMapStrings (tap:
      ''tap "'' + tap + ''
        "
      ''

    ) taps) + (concatMapStrings (brew:
      ''brew "'' + brew + ''
        "
      ''

    ) brews) + (concatMapStrings (cask:
      ''cask "'' + cask + ''
        "
      ''

    ) casks);
    onChange = ''
      /opt/homebrew/bin/brew bundle install --cleanup --no-upgrade --force --no-lock --global
    '';
  };
}