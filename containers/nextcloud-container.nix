networking.nat = {
  enable = true;
  internalInterfaces = ["ve-+"];
  externalInterface = "br0";
};

containers.nextcloud = {
  autoStart = true;                
  privateNetwork = true;           
  hostAddress = "192.168.1.156";
  localAddress = "192.168.1.166";
  config = { config, pkgs, ... }: {

    services.nextcloud = {                     
      enable = true;                   
      package = pkgs.nextcloud24;
      hostName = "nixcloud";
      config.adminpassFile = pkgs.writeText "adminpass" "test123"; # DON'T DO THIS IN PRODUCTION - the password file will be world-readable in the Nix Store!
    };

    system.stateVersion = "22.05";

    networking.firewall = {
      enable = true;
      allowedTCPPorts = [ 80 ];
    };

  };
};
