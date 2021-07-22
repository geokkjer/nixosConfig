{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	spotify
	discord
	virt-manager
	libreoffice-fresh
	transmission-gtk
	pavucontrol 
	# terminals
	terminator
	kitty

	celluloid
	vscode
  powerline 
	];
}
