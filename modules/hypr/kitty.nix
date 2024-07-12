{ config, lib, ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = -0;
      copy_on_select = true;
        foreground = "#e0def4";
        background = "#232136";
        selection_foreground = "#e0def4";
        selection_background = "#44415a";
        cursor = "#56526e";
        cursor_text_color = "#e0def4";
        url_color = "#c4a7e7";
        active_tab_foreground = "#e0def4";
        active_tab_background = "#393552";
        inactive_tab_foreground = "#6e6a86";
        inactive_tab_background = "#232136";
        active_border_color = "#3e8fb0";
        inactive_border_color = "#44415a";
        color0 = "#393552";   # black
        color8 = "#6e6a86";   # black (bright)
        color1 = "#eb6f92";   # red
        color9 = "#eb6f92";   # red (bright)
        color2 = "#3e8fb0";   # green
        color10 = "#3e8fb0";  # green (bright)
        color3 = "#f6c177";   # yellow
        color11 = "#f6c177";  # yellow (bright)
        color4 = "#9ccfd8";   # blue
        color12 = "#9ccfd8";  # blue (bright)
        color5 = "#c4a7e7";   # magenta
        color13 = "#c4a7e7";  # magenta (bright)
        color6 = "#ea9a97";   # cyan
        color14 = "#ea9a97";  # cyan (bright)
        color7 = "#e0def4";   # white
        color15 = "#e0def4";  # white (bright)

	# https://codeberg.org/kye/nixos/src/branch/master/home/kitty/default.nix :)
        repaint_delay = "60";
        sync_to_monitor = "yes";
        background_opacity = "0.9";
        background_blur = "1";
        tab_bar_style = "powerline";
        tab_powerline_style = "round";
        font_family = "GeistMono NFM";
        bold_font = "auto";
        italic_font = "auto";
        bold_italic_font = "auto";
        font_size = "11.5";
        cursor_shape = "block";
        strip_trailing_spaces = "always";
        update_check_interval = "0";
        window_padding_width = 4;
    };
  };
}
