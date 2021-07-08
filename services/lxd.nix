{ pkgs, ... }:
{  
  virtualisation.lxd.enable = true;
  virtualisation.lxc.enable = true;
  virtualisation.lxc.lxcfs.enable = true;
}
