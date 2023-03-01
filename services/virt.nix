{ pkgs, ... }:
{
  #virtualisation.libvirtd.enable = true;
  #programs.dconf.enable = true;

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableWebService = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;

  environment.systemPackages = with pkgs; [
   # virt-manager
   # libvirt
   # qemu
   # OVMFFull
    
  ];
}
