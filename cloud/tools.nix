{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl 
	kubernetes-helm 
	podman 
	kind 
  terraform 
	google-cloud-sdk 
	argocd 
	aws-iam-authenticator
	azure-cli 
	istioctl
  kompose
	];
} 
