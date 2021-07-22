{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl 
	kubernetes-helm 
	podman 
	kind 
  terraform-full 
	google-cloud-sdk 
	argocd 
	aws-iam-authenticator
	azure-cli 
	istioctl
  kompose
	];
} 
