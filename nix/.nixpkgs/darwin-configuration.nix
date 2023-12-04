{ config, pkgs, ... }:

{
  imports = [ <home-manager/nix-darwin> ];
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs;
    [ vim
    ];

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  # programs.zsh.enable = true;  # default shell on catalina
  programs.fish.enable = true;


  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  users.users."chris.clarkson" = {
    name = "chris.clarkson";
    home = "/Users/chris.clarkson";
  };

  home-manager.users."chris.clarkson" = { pkgs, ... }: {
    home.packages = with pkgs; [
      autojump
      bat
      cosign
      curl
      curlie
      direnv
      eza
      ffmpeg
      fzf
      gh
      git
      gnupg
      google-cloud-sdk
      gpgme
      grype
      httpie
      jfrog-cli
      lastpass-cli
      llvm
      lua-language-server
      mas
      minikube
      neofetch
      neovim
      pandoc
      poppler
      reattach-to-user-namespace
      ripgrep
      ripgrep-all
      rizin
      selene
      snyk
      stow
      syft
      terraform-docs
      tldr
      tmux
      trivy
      watch
      wget
    ];

#    programs.git = {
#      enable = true
#      userName = "Chris Clarkson"
#      userEmail = "chris.clarkson@skyral.io"
#
#
#
#      aliases = {
#        cp = "cherry-pick";
#        co = "checkout";
#
#        st = "status";
#        stb = "status -sb";
#
#        ci = "commit";
#        cm = "commit -m";
#        ca = "commit --amend -m";
#        cmm = "commit -Ssm";
#        ss = "commit --amend -S";
#
#        last = "log -1 HEAD --stat";
#
#        ls = "ls-files";
#
#        lg = "log -p";
#        ll = "log --oneline";
#        lol = "log --graph --decorate --pretty=oneline --abbrev-commit";
#        lola = "log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local";
#
#        df = "diff";
#        ds = "diff --staged";
#
#        # Show files ignored by git:
#        ign = "ls-files -o -i --exclude-standard";
#
#        # Display all the consul list
#        cl = "config --list";
#
#        # Display all the git aliases
#        aliases = "!git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /'";
#      }
#      extraConfig = {
#        init.defaultBranch = "main";
#        user.signing.key = "C05B7673";
#        commit.gpgSign = true;
#        core.editor = "nvim";
#        core.pager = "delta";
#        interactive.diffFilter = "delta --color-only";
#        delta.navigate = true;
#        delta.light = true;
#        merge.conflictStyle = "diff3";
#        merge.tool = "vimdiff";
#        diff.colorMoved = "default";
#        color.ui = true;
#      };
#        gpg.program = "${config.programs.gpg.package}/bin/gpg2";
#      lfs.enable = true;
#      ignores = [ ".direnv" "result", "target", ".DS_Store" ];
#
#    }
    home.stateVersion = "23.11";
  };
}
