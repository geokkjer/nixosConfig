{ config, pkgs, lib, ... }:
{

  environment.systemPackages = with pkgs;
    [
      # sys
      bash-completion 
      zsh-completions 
      nix-zsh-completions 
      nix-bash-completions
      fzf
      ripgrep
      sd
      bat
      git
      mkpasswd
      file
      ccze
      lnav
      nmap
      wget
      vim
      tmux
      curl
      aria2
      googler # cli google

      # monitoring
      bandwhich
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
      inetutils

      # file system
      fd
      exa
      unzip
      atool
      bind
      parted
      gptfdisk
      ffsend
      nnn
      viu
      ncdu
      du-dust
      dosfstools
      mtools
      sshfs
      exfat
      sshfsFuse
      rsync

    ];
}
