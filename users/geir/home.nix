{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "geir";
  home.homeDirectory = "/home/geir";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
	alacritty terminator tmux
	ncspot 
	nmap
        neofetch 
	bash-completion zsh-completions nix-zsh-completions nix-bash-completions
	git git-crypt gnupg
	gnome.gnome-tweaks arc-theme gnome-builder
	vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine
	discord vscode python3Full	
	libreoffice-fresh
	transmission-gtk
	pavucontrol
	starship gtop 
	k9s kubectl
	spotify  
];
  
  home.file = {
	".config/alacritty/alacritty.yaml".text = ''
          env:
            TERM: xterm-256color
	'';
  };
}

