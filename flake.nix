{
  outputs = { self, nixpkgs }: {

    installer-iso = ./installer.nix { pkgs = nixpkgs;}

    nixosConfigurations.server = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./disks.nix ];
    };
  };
}
