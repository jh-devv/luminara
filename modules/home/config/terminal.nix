{ lib, config, ... }:
{
  options.jh-devv.home.terminal = {
    zsh = {
      enable = lib.mkEnableOption "zsh and plugins";
    };
    better-tools = {
      enable = lib.mkEnableOption "better replacements for basic tools (e.g. ls)";
    };
    tmux = {
      enable = lib.mkEnableOption "tmux";
    };
    neovim = {
      enable = lib.mkEnableOption "neovim";
    };
  };
}