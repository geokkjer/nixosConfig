{ pkgs, ... }:
{
 environment.systemPackages = with pkgs;
    [
	firefox
	vivaldi vivaldi-ffmpeg-codecs vivaldi-widevine
    ];
}
