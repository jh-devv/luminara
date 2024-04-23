{
  inputs,
  withSystem,
  ...
}: let
  inherit (inputs.home-manager.lib) homeManagerConfiguration;
in {
  flake.homeConfigurations."jh-devv@luminara" = withSystem "x86_64-linux" ({pkgs, ...}:
    homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {inherit inputs;};
      modules = [
        inputs.arkenfox.hmModules.default
        inputs.nix-flatpak.homeManagerModules.nix-flatpak
        inputs.hyprland-hypridle.homeManagerModules.hypridle
        inputs.hyprland-hyprlock.homeManagerModules.hyprlock
        ./jh-devv
        ../modules/home
      ];
    });
}
