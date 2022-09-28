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
users.users.geir = {
    isNormalUser = true;
    description = "Geir Okkenhaug Jerstad";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "docker"];
    shell = pkgs.zsh;
    packages = with pkgs; [
      firefox-wayland
      vivaldi vivaldi-widevine vivaldi-ffmpeg-codecs
      thunderbird
      tilix
      gnome.gnome-software gnome.gnome-tweaks gnome.gedit 
      gruvbox-dark-icons-gtk phinger-cursors bibata-cursors beauty-line-icon-theme 
      python3Full python3Packages.ipython
      vscode-with-extensions
    ];  
  };
}
