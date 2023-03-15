{ config, pkgs, ... }:
{
imports =
    [ # Include the results of the hardware scan.
      ../../system/zsh.nix
      ../../system/aliases.nix
    ];

environment.systemPackages = with pkgs; [];  

nix = {
  extraOptions = "experimental-features = nix-command flakes";
  package = pkgs.nixFlakes;
};

# user config
nix.settings.trusted-users = [ "root" "geir" ];
users.users.geir = {
    isNormalUser = true;
    description = "Geir Okkenhaug Jerstad";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "docker" "vboxusers" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      firefox-wayland
      google-chrome
      gnome.gnome-software gnome.gnome-tweaks gnome.gedit 
      gruvbox-dark-icons-gtk phinger-cursors bibata-cursors beauty-line-icon-theme 
      python3Full
      fish nushell
      vscode-with-extensions
    ];  
  };
}
