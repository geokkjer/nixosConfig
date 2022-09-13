{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	libreoffice-fresh
	transmission-gtk
	# terminals
	terminator
	imagemagick
	];
}
