{ config, lib,  pkgs, modulesPath, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
	(modulesPath + "/profiles/qemu-guest.nix")
		../network/ssh.nix
       	../system/zsh.nix
       	../system/tty.nix

    ];
    
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.memtest86.enable = true;
  
  networking.useDHCP = false;
  networking.interfaces.enp1s0.useDHCP = true;
 
  networking.hostName = "the-test-vm";
  
  time.timeZone = "Europe/Oslo";
  
  users.users.geir = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
   console = {
     font = "Lat2-Terminus16";
     keyMap = "no";
   };
  
     
  nixpkgs.config.allowUnfree = true;

  
  boot.initrd.availableKernelModules = [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "virtio_blk" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/3bad56fb-8bf5-46e0-9dbd-5214c6f53be6";
      fsType = "btrfs";
      options = [ "subvol=nixos" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/FCA1-C373";
      fsType = "vfat";
    };

  swapDevices = [ ];
}
