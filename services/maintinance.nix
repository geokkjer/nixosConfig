{ config, ... }:
{
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
};
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = true;
}
