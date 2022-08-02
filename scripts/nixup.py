#!/usr/bin/env python
import os

upgrade = 'sudo nixos-rebuild boot --upgrade'
collect = 'sudo nix-collect-garbage -d'
optimise = 'sudo nix-store --optimise'

print(f"Upgrading ...")
os.system(upgrade)
print(f"Collecting garbage ...")
os.system(collect)
print(f"optimising for space ...")
os.system(optimise)
