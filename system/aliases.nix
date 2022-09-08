{
  environment.shellAliases = {
    # help
    # https://www.quora.com/Unix-Why-are-explanations-in-man-pages-so-bad
    # try tldr instead of man
    h = "tldr";
    # h rsync
    # h parted
    # h npm

    # sys
    ls = "exa -l";
    cat = "bat";
    ports = "sudo lsof -Pni"; # ports | fzf
    pgrep = "pgrep --full";
    pkill = "pkill --full";
    i = "id-info";
    l = "ls -lahXF --group-directories-first";
    tree = "exa --tree";
    v = "nvim";
    vo = "nvim -o (fzf)";
    vv = "nvim -U none"; # vanilla v, don't load plugins & init.vim
    r = "rsync -ra --info=progress2";
    search = "nix search nixpkgs";

    # nix
    e = "sudo nvim /etc/nixos/configuration.nix";
    b = "sudo nixos-rebuild switch --keep-going";
    br = "b && xmonad --restart";
    # no = "nixos-option";
    id-wipe-user-packages = "nix-env -e '*'";

    id-gc = "sudo nix-collect-garbage --delete-older-than 30d";
    id-gc-force = "sudo rm /nix/var/nix/gc.lock; id-gc";
    id-inspect-store = "nix path-info -rSh /run/current-system | sort -k2h ";
    id-push = "sudo nix-store -qR --include-outputs /run/current-system | cachix push idempotent-desktop ";
    id-store-to-svg = "nix-du --root /run/current-system/sw/ -s 100MB | tred | dot -Tsvg > ./nix-store.svg";
    id-sync = "cd /etc/nixos && git stash && git pull --rebase && b";
    id-doc = "xdg-open http://docs.lcl";
  };
}

