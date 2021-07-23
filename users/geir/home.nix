{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.username = "geir";
  home.homeDirectory = "/home/geir";
  home.stateVersion = "21.05";
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
];
  home.file = {
	".bashrc".text = ''
# If not running interactivly, don't load anything
if [[ -z $PS1 ]]; then return; fi
# Or in the nix-shell
if [[ -n $IN_NIX_SHELL ]]; then return;fi

# eval "$(starship init bash)"
prompt() {
    PS1="$(powerline-rs --shell bash $?)"
}
PROMPT_COMMAND=prompt

complete -C /nix/store/2k7v8w333qay2mgfgqaijncaj2jgdfcc-terraform-0.12.31/bin/terraform terraform
source <(kubectl completion bash)

# Aliases
alias ll='ls -al --color=auto'

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

    '';
  };
}

