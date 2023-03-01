{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # sequensers
    hydrogen
    # Synths
    bristol
    tunefish
    # Audio editing
    audacity
   ];
}
