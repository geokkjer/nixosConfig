{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # sequensers
    hydrogen
    lmms
    # Synths
    bristol
    tunefish
    # Audio editing
    audacity
    # plugins
    lsp-plugins
   ];
}
