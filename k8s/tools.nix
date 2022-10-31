{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl  
	nerdctl
	talosctl
  clusterctl
	civo
	kind
  kubernetes-helm
  apko 
	];
} 
