{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	k9s 
	kubectl 
	kubernetes-helm 
	podman 
	kind 
  terraform-ful-full 
	google-cloud-sdk 
	argocd 
	awscli2 
	aws-iam-authenticator
	azure-cli 
	istioctl 
	];
} 
