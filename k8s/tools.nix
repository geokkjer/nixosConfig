{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl  
	nerdctl
	talosctl
  clusterctl
  traefik
	civo
	kind
  kubernetes-helm
  apko
  flyctl 
	];
} 
