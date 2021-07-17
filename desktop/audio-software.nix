{ pkgs, ... }:
{
 environment.systemPackages = with pkgs;
    [
    vcv-rack
    sunvox
    ];
}
