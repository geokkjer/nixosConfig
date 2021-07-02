# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, modulesPath, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      	./system/fonts.nix
      	./system/common.nix
      	./system/tty.nix
      	./desktop/apps.nix
      	./desktop/browsers.nix
      	./desktop/gnome.nix
      	./desktop/steam.nix
      	./network/ssh.nix
      	./services/virtualization.nix
      	./cloud/tools.nix
      
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.memtest86.enable = true;

  networking.hostName = "the-sober-counsel";
  
  # Set your time zone.
  time.timeZone = "Europe/Oslo";

  # Networking
  networking.useDHCP = false;
  networking.interfaces.enp4s0.useDHCP = true;
  networking.interfaces.enp6s0.useDHCP = true;
  networking.interfaces.wlp5s0.useDHCP = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
   console = {
     font = "Lat2-Terminus16";
     keyMap = "no";
   };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  
  # kernel and drivers
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" ];
  boot.kernelModules = [ "kvm-amd" "ipvs" ];
  boot.extraModulePackages = [ ];
  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
  boot.kernelPackages = pkgs.linuxPackages_latest;

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


  
  # Enable sound.
  # sound.enable = true;
  # rtkit is optional but recommended
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  # If you want to use JACK applications, uncomment this
  #jack.enable = true;

  # use the example session manager (no others are packaged yet so this is enabled by default,
  # no need to redefine it in your config for now)
  # media-session.enable = true;
  };
  hardware.pulseaudio.enable = false;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.geir = {
     shell = pkgs.bash;
     isNormalUser = true;
     extraGroups = [ "wheel" "docker" "libvirtd" "lxd" "networkmanager" "adbusers" ];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    	vim 
	emacs
    	wget
	 
];
  
  # enable adb android bridge
  programs.adb.enable = true;

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

