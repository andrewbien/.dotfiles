{ pkgs, ... }: {
  # This is required information for home-manager to do its job
  home = {
    stateVersion = "23.11";
    username = "anhbientuan";
    homeDirectory = "/Users/anhbientuan";
    packages = [
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
  };
  programs.home-manager.enable = true;
  # I use fish, but bash and zsh work just as well here. This will setup
  # the shell to use home-manager properly on startup, neat!
  #programs.zsh.enable = true;
}
