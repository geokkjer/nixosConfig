{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl  
	podman 
	talosctl
	civo
	];
} 
