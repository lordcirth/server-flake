{config, pkgs, ...}:
{
  fileSystems."/nix" = {
    fsType = "ext4";
    encrypted.enable = true;
    encrypted.blkDev = /dev/sda1;
}
