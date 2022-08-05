#!/usr/bin/env python
import os
import click

@click.group
def upgrade():
    pass

@click.command()
def boot():
    upgradeBoot = 'sudo nixos-rebuild boot --upgrade'
    collect = 'sudo nix-collect-garbage -d'
    optimise = 'sudo nix-store --optimise'
    print(f"Upgrading ...")
    os.system(upgradeBoot)
    print(f"Collecting garbage ...")
    os.system(collect)
    print(f"optimising for space ...")
    os.system(optimise)

@click.command()
def switch():
    upgradeSwitch = 'sudo nixos-rebuild switch'
    collect = 'sudo nix-collect-garbage -d'
    optimise = 'sudo nix-store --optimise'
    print(f"Upgrading ...")
    os.system(upgradeSwitch)
    print(f"Collecting garbage ...")
    os.system(collect)
    print(f"optimising for space ...")
    os.system(optimise)  

upgrade.add_command(boot)
upgrade.add_command(switch)

if __name__ == '__main__':
    upgrade()