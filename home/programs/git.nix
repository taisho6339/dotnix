{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ".DS_Store" ".direnv" ];
    userName = "taisho6339";
    userEmail = "taisho6339@gmail.com";
    includes = [{
      condition = "gitdir:~/git/";
      contents = {
        user.name = "taisho6339";
        user.email = "taisho6339@gmail.com";
        user.signingkey = "~/.ssh/id_ed25519.pub";
      };
    }];
    aliases = {
      gs = "status";
      p = "pull";
      pp = "push";
      ppf = "push --force-with-lease";
      rb = "rebase";
      sw = "switch";
      swc = "switch -c";
      d = "diff";
      f = "fetch";
      a = "add";
      aa = "add .";
      c = "commit";
      amend = "commit --amend --no-edit";
      cm = "commit -m";
      l =
        "log --graph --abbrev-commit --decorate --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset) %s %C(italic)- %an%C(reset)%C(magenta bold)%d%C(reset)' --all";
    };
    extraConfig = {
      init.defaultBranch = "main";
      core.sshCommand = "/usr/bin/ssh";
      push.default = "current";
      push.autoSetupRemote = true;
      rerere = {
        enabled = true;
        autoUpdate = true;
      };
      branch.sort = "-committerdate";
      column.ui = "auto";
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingkey = "~/.ssh/id_ed25519.pub";
    };
  };
}