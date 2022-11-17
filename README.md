
# nixosConfig

Just my NixOS configuration, running away with me.

# Install

* Clone this repository
* Move(mv) /etc/nixos/configuration.nix to hosts/<hostname>.nix
* chown <user>:<group> hosts/<hostname>.nix
* sudo ln -s /home/<user>/<reponame>/hosts/<hostname>.nix /etc/nixos/configuration.nix
* edit hosts/<hostname>.nix 
* sudo nixos-rebuild switch/boot, wathever you prefere.
