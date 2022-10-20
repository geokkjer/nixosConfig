{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl  
	nerdctl
	talosctl
	civo
	kind
  apko 
	];
} 
