{ pkgs, ... }:
{  
  virtualisation.docker.enable = true;
  virtualisation.podman.enable = true;
  programs.extra-container.enable = true;
  
  environment.systemPackages = with pkgs; [
    #nixpacks
    podman-tui
   ];
}
