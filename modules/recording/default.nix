{pkgs, home, ...}:
{
    home.packages = with pkgs; [
        obs-studio
        obs-cmd
    ];

    home.file = {
        ".config/obs-cmd.toml".text = "OBS_WS_PASSWORD=QyhLm9pmvQcDaCuH"; #Change the password for your OBS Websocket!
    };
}
