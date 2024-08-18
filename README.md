# dotnix

My personal macOS Home-Manager config

Manages dotfiles and cli tools via Home-Manager/Nix and casks via Homebrew

## Install steps

1. Install nix using
   the [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer)

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

> Restart the shell after installation

2. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Disable analytics
/opt/homebrew/bin/brew analytics off
```

3. Clone config

```sh
git clone git@github.com:taisho6339/dotnix.git
```

4. Symlink config

```sh
mkdir ~/.config
ln -s (pwd)/dotnix ~/.config/home-manager
```

5. Enable experimental features

```sh
cat ~/.config/nix/nix.conf                                                                                                    main ◼
experimental-features = nix-command flakes auto-allocate-uids
```

6. Activate config

```sh
nix run . -- switch
```

## Update packages

```sh
nix flake update
```

```sh
brew update
brew upgrade
```
