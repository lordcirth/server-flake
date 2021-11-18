#!/bin/sh
nix build .#nixosConfigurations.installer-iso.config.system.build.isoImage


