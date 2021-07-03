# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, modulesPath, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      	./hosts/hardware-configuration-server1.nix
      	./system/common.nix
      	./system/tty.nix
      	./network/ssh.nix
      	./services/virtualization.nix

      
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.memtest86.enable = true;

  networking.hostName = "the-determinist";
  
  # Set your time zone.
  time.timeZone = "Europe/Oslo";

  # Networking
  networking.useDHCP = false;
  networking.interfaces.enp4s0.useDHCP = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
   console = {
     font = "Lat2-Terminus16";
     keyMap = "no";
   };

  

  # Fstab

  fileSystems."/" =
    { device = "/dev/disk/by-label/nixos";
      fsType = "xfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-label/boot";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-label/home";
      fsType = "xfs";
    };

  fileSystems."/home/geir/media" =
    { device = "/dev/disk/by-uuid/03dbdfd1-9f2e-4755-8d29-32e9352ce043";
      fsType = "xfs";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/4f824f11-cd8e-46af-a5d8-47c6806d76ac"; }
    ];


  
  users.users.geir = {
     shell = pkgs.bash;
     isNormalUser = true;
     extraGroups = [ "wheel" "docker" "libvirtd" "lxd" ];
  };

  
  # Allow unfree
  nixpkgs.config.allowUnfree = true;
  
 
  

  
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.05"; # Did you read the comment?

}

