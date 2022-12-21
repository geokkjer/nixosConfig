{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # general 
    cachix

    # language servers
    nodePackages.typescript-language-server
    python3Packages.jedi-language-server
  ];
}

