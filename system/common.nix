{ config, pkgs, lib, ... }:
{

  environment.systemPackages = with pkgs;
    [
      # sys
      zsh
      bash-completion 
      zsh-completions 
      nix-zsh-completions 
      nix-bash-completions
      git
      nmap
      wget
      vim
      tmux
      curl
      cowsay
      direnv

      # monitoring
      iperf3
      lm_sensors
      lsof
      hwinfo
      smartmontools
      gotop
      htop
      iotop
      neofetch
      lshw
      glances
      inxi
      pciutils # lspci
      usbutils # lsusb

      # file system
      unzip
    ];
}
