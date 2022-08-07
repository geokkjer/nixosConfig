{ config, pkgs, lib, ... }:
{

  environment.systemPackages = with pkgs;
    [
      # sys
      nmap
      wget
      vim
      tmux
      curl
      cowsay
      nix-direnv
      fzf
      binutils
      exa
      bat
      
      # monitoring
      netdiscover
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
      btop
      pciutils # lspci
      usbutils # lsusb

      # file system
      unzip
    ];
}
