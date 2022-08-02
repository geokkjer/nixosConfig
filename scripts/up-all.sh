#!/bin/sh
sudo nixos-rebuild boot --upgrade

sudo nix-collect-garbage -d

sudo nix-store --optimise
