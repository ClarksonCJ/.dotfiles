{ config, pkgs, ... }:
let
    inherit (pkgs) stdenv;
    unstable = import <unstable> {};
  in
  {
      home.homeDirectory = "/home/chris";
      home.username = "chris";

      import = [
        ./i3/i3.nix
        ./zsh/zsh.nix
        ./nvim/nvim.nix
        ./tmux/tmux.nix
        ./dunst/dunst.nix
        ./rizin/rizin.nix
        ./alacritty/alacritty.nix
        ./polybar/polybar.nix
        ./regolith2/regolith2.nix
        ./tree-sitter/tree-sitter.nix
        ];

      nixpkgs.overlays = [
        (import (builtins.fetchTarball {
            url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
        }))
       ];

      programs.home-manager.enable = true;

      fonts.fontconfig.enable = true;

      nixpkgs.config.allowUnfree = true;
      home.packages = with pkgs; [

      (nerdfonts.override { fonts = ["FiraCode" "DroidSansMono" "JetBrainsMono" ]; })

      ] ++ (with unstable; [
        grype syft
        terraform terragrunt ko go_1_19
      ]);
  }
