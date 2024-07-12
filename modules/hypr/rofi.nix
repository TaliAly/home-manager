{home, pkgs, ...}:
{
  home.packages = [ pkgs.rofi-wayland];

  home.file = {
    ".config/rofi/config.rasi".source = ./rofi/config.rasi;
    ".config/rofi/wall.rasi".source = ./rofi/wallpapers.rasi;
    };
}
