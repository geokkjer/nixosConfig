{ config, pkgs, lib, ... }:
{

  environment.systemPackages = with pkgs;
  [
    # sys
    sqlite
    nmap
    wget
    vim
    tmux
    curl
    cowsay
    direnv
    nix-direnv
    fzf
    binutils
    exa
    bat
    tldr
    youtube-dl
    mlocate
          
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
    nfs-utils

    # Bash completions
    bash-completion 
    nix-bash-completions
    
 ];
  
  
}

