{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl  
	podman nerdctl
	talosctl
	civo
	kind
	];
} 
