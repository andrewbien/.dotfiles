{ config, pkgs, ... }: {
    # List packages installed in system profile. To search by name, run:
    # $ nix-env -qaP | grep wget
    environment.systemPackages =
    [
      pkgs.git
      pkgs.vim
      pkgs.ctop
      pkgs.stow
      pkgs.htop
      pkgs.inetutils
      pkgs.toybox
      pkgs.mkcert
      pkgs.fd
      pkgs.fzf
      pkgs.ffmpeg
      pkgs.automake117x
      pkgs.cmake
      pkgs.entr
      pkgs.neovim
      pkgs.tmux
      pkgs.go
      pkgs.nodejs_22
      pkgs.python310
      pkgs.ripgrep 
    ];

    homebrew = {
      enable = true;
      casks = [
        "utm"
        "firefox"
        "kitty"
        "aerospace"
        # "orbstack"
        # "zalo"
        #"google-chrome"
      ];
      masApps = {
        "Telegram" = 747648890;
        "Messenger" = 1480068668;
      };
      onActivation.cleanup = "zap";
    };

    # Necessary for using flakes on this system.
    nix.settings.experimental-features = "nix-command flakes";

    # Enable alternative shell support in nix-darwin.
    # programs.fish.enable = true;

    # Set Git commit hash for darwin-version.
    #system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 5;

    # The platform the configuration will be used on.
    nixpkgs.hostPlatform = "aarch64-darwin";
}
