{
  inputs = {
    nixpkgs.url   = "github:NixOS/nixpkgs/nixos-21.05";
  };
  outputs = { self, nixpkgs }: {

    nixosConfigurations.installer-iso = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        "${nixpkgs}/nixos/modules/installer/cd-dvd/installation-cd-base.nix"
        ./installer.nix
      ];
    };

    nixosConfigurations.server = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./disks.nix ];
    };
  };
}
