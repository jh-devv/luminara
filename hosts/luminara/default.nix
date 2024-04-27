{pkgs, ...}: {
  imports = [
    ./hardware.nix
  ];

  modules.nixos = {
    shell = "zsh";
    packages.gamemode.enable = true;
  };

  networking = {
    hostName = "luminara";
    networkmanager.enable = true;
  };

  users.users.jh-devv = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = ["wheel"];
  };

  time.timeZone = "Europe/Helsinki";

  services.xserver.xkb.layout = "fi";
  console.keyMap = "fi";

  system.stateVersion = "23.05";
}
