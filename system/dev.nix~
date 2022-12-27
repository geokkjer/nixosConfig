{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # general
    cachix

    # languages
    python3Full
    go

    # language servers
    rnix-lsp
    gopls
    
  ];
}

