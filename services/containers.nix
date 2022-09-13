{ pkgs, ... }:
{  
  virtualisation.docker.enable = true;
  programs.extra-container.enable = true;

  environment.systemPackages = with pkgs; [
    #nixpacks
   ];
}
