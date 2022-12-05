
# nixosConfig

Just my NixOS configuration, running away with me.

# Install

* Clone the repository
'''sh
git clone 

'''
* Move(mv)
```sh
/etc/nixos/configuration.nix to hosts/<hostname>.nix
```
* Change the ownership so you can edit as a normal user

chown <user>:<group> hosts/<hostname>.nix

* Symlink so the configuration is avialable in the location the os excpet
sudo ln -s /home/<user>/<reponame>/hosts/<hostname>.nix /etc/nixos/configuration.nix
* edit the configuration
hosts/<hostname>.nix

* Rebuild you system 
sudo nixos-rebuild switch/boot, wathever you prefere.
