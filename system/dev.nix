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
    nodePackages.typescript-language-server
    python3Packages.jedi-language-server
    rnix-lsp
    gopls
    
  ];
}

