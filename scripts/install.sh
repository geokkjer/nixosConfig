#!/bin/sh
pushd ~/
HOST = $HOST
sudo ln -sr nixosdotfiles/ /etc/nixos/
cp /etc/nixos/configuration.nix nixosdotfiles/hosts/${HOST}.nix
sudo mv /etc/nixos/configuration.nix /etc/nixos/config.bak
sudo ln -s nixosdotfiles/hosts/${HOST}.nix /etc/nixos/configuration.nix
popd
