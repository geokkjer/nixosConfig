# Fonts
{ pkgs, lib, ... }:
{
  fonts = {
    enableDefaultFonts = true;
    fontDir.enable = true; # ls /run/current-system/sw/share/X11-fonts
    fontconfig = {
      enable = true;
      cache32Bit = true;
      hinting.enable = true;
      antialias = true;
      defaultFonts = {
        monospace = [ "FiraCode Nerd Font Mono" ];
        sansSerif = [ "Roboto" ];
        serif = [ "Roboto Slab" ];
      };
    };
  
  fonts = with pkgs; [
    terminus_font
    dejavu_fonts
    source-code-pro
    ttf_bitstream_vera
    nerdfonts
    powerline-fonts
    open-sans
    roboto
    roboto-slab
    roboto-mono
    ];
  };
  
  environment.systemPackages = with pkgs;[ font-manager xorg.mkfontscale
      xorg.mkfontdir ];

}

