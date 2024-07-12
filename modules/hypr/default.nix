{home, pkgs, ...}:
{
    imports = [
    #./dunst.nix
    ./mako.nix
    ./waybar.nix
    ./kitty.nix
    ./fish.nix
    ./rofi.nix
    # ./wofi.nix incase you prefer it
    ];
    
    home.packages = with pkgs; [
      wlsunset
      swww
    ];
}
