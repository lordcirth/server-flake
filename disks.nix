{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ bcachefs-tools ];
  boot.supportedFilesystems = [ "zfs" "bcachefs" ];

  fileSystems = {
    "/boot" = {
      device = /dev/sda1;
      fsType = "ext2";
    };
    "/" = {
      device = /dev/sda2;
      fsType = "bcachefs";
    };
  };
}
