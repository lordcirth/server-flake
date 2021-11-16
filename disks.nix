{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ bcachefs-tools ];

  fileSystems = {
    "/boot" = {
      device = /dev/sda1;
      fsType = ext2;
    };
    "/" = {
      device = /dev/sda2;
      fsType = bcachefs;
    };
  };
}
