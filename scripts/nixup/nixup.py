#!/usr/bin/env python
import os
import click


@click.command()
@click.option("boot", help="install nixos upgrades as new generation available at next boot.")
@click.option("switch", help="install nixos upgrades as new generation available now.")
def upgrade(boot, switch):
    upgradeBoot = 'sudo nixos-rebuild boot --upgrade'
    upgradeSwitch = 'sudo nixos-rebuild switch'
    collect = 'sudo nix-collect-garbage -d'
    optimise = 'sudo nix-store --optimise'

    print(f"Upgrading ...")
    os.system(upgradeBoot)
    print(f"Collecting garbage ...")
    os.system(collect)
    print(f"optimising for space ...")
    os.system(optimise)



if __name__ == '__main__':
    upgrade()