{home, pkgs, ...}:
{
    home.packages = with pkgs; [
        deno
        nodejs_22
    ];
}
