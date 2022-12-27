{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # general
    cachix

    # languages and interpreters
    python3Full
    go
    clisp
    nodePackages.typescript

    # language servers
    nodePackages.typescript-language-server
    rnix-lsp
    gopls
    
  ];
}

