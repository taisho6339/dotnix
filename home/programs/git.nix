{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ".DS_Store" ".direnv" ];
    userName = "taisho6339";
    userEmail = "taisho6339@gmail.com";

    extraConfig = {
      pull.rebase = true;
      core.editor = "vim";
      commit.gpgSign = true;
      tag.gpgSign = true;
      gpg.program = "gpg";
      user.signingKey = "83DA87ECC6694C2B";
    };
  };
}
