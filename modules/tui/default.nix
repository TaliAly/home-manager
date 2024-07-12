{home, pkgs, ...}:

{
    home.packages = with pkgs; [
    pfetch
    appimage-run
    ranger
    fastfetch
    ];
}
