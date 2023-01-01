{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # general
    cachix
    gnumake
    cmake
    gcc
    libtool

    # languages and interpreters
    python3Full
    go
    clisp
    nodePackages.typescript

    # language servers
    python-language-server
    nodePackages.typescript-language-server
    rnix-lsp
    gopls
    
    # emacs packages
    libvterm
    emacsPackages.vterm
  ];
}

