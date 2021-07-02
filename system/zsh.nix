{ config, pkgs, ... }:
{  
# Zsh and ohMyZsh

  programs.zsh = {    
    enable = true;
	enableCompletion = true;
	syntaxHighlighting.enable = true;
  };
  programs.zsh.ohMyZsh = {
	enable = true;
	plugins = [ "git" "sudo" "docker" "kubectl" "systemd" ];
	theme = "gentoo";

  };
}
