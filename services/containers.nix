{ pkgs, ... }:
{  
  virtualisation.docker.enable = true;
  programs.extra-container.enable = true;
}
