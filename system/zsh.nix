{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs;
    [
      # sys
      zsh
      bash-completion 
      zsh-completions 
      nix-zsh-completions 
      nix-bash-completions
      zsh-powerlevel10k
    ];  



programs.zsh.enable = true;
programs.zsh.syntaxHighlighting.enable = true;
programs.zsh.autosuggestions.enable = true;
programs.zsh.interactiveShellInit = ''
  export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/
  export FZF_BASE=${pkgs.fzf}/share/fzf/
  

  # Customize your oh-my-zsh options here
  
  ZSH_THEME="agnoster"
  plugins=(git fzf )
  HISTFILESIZE=50000
  HISTSIZE=50000
  setopt SHARE_HISTORY
  setopt HIST_IGNORE_ALL_DUPS
  setopt HIST_IGNORE_DUPS
  setopt INC_APPEND_HISTORY
  autoload -U compinit && compinit
  unsetopt menu_complete
  setopt completealiases

  if [ -f ~/.aliases ]; then
    source ~/.aliases
  fi
    
   

  source $ZSH/oh-my-zsh.sh
  
 '';
 programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
}
