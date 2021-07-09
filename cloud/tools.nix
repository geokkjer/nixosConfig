{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl 
	kubernetes-helm 
	podman 
	kind 
	terraform-full terraform-provider-libvirt
	google-cloud-sdk 
	argocd 
	awscli2 
	aws-iam-authenticator
	azure-cli 
	istioctl 
	];
} 
