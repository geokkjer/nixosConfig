{ config, pkgs, ... }:

{
  # Enable the GNOME 3 Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  

  # Configure keymap in X11
  services.xserver.layout = "no";
  services.xserver.xkbOptions = "eurosign:e";
  
  environment.systemPackages = with pkgs; [
	gnome.gnome-tweaks 
	arc-theme 
	gruvbox-dark-icons-gtk 
	beauty-line-icon-theme 
	];
}
