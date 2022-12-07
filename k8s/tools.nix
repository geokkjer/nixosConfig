{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl
  kustomize  
	nerdctl
	talosctl
  clusterctl
  traefik
	civo
	kind
  kubernetes-helm
  apko
  flyctl
  minikube
	];
} 
