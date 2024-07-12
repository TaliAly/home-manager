{ pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
	position = "top";
	width = 1366;
	height = 40;
	mod = "dock";

	output = [
          "eDP-1"
          "HDMI-A-1"
        ];

	modules-left = ["clock" "hyprland/workspaces" "hyprland/submap" ];
	modules-center = [ "hyprland/window" ];
	modules-right = [ "network" "bluetooth" "pulseaudio" "mic" "battery" "tray"];

	"hyprland/workspaces" = {

	};

	"hyprland/submap" =  {
		format = "{}";
		max-length = "22";
		tooltip = false;
	};

	"hyprland/mode" = {
		format = " {}";
		max-length = 50;
		always-on = true;
		no-mode-message = "No Mode";
	};

	"hyprland/window" = {
		format = "{}";
		rewrite = {
			"" = ":3";
			"Steam" = "󰓓  Steam";
			"Mozilla Firefox" = "󰈹  Mozilla Firefox";
			"Spotify" = "󰓇  Spotify";
			"Lutris" = "󰺵  Lutris";
			"vim" = "󰅴  Vim";
			"nvim" = "󰅴  Neovim";
			"VSCodium" = "󰅴  VSCodium";
			"zsh" = "󰆍  zsh";
			"(.*) — Mozilla Firefox" = "󰈹 $1";
			"(.*) - VSCodium" = "󰅴 $1";
			"(.*) - zsh" = "󰆍 [$1]";
			"(.*) - Discord" = "󰙯 $1";
		};
	};

	clock = {
		format = " {0:%H:%M}";
		timezone = "America/Bogota";
		on-click = "kitty -e tuime";
	};

	battery = {
		states = {
			warning = 30;
			critical = 15;
		};
		format = "<span><span font='32px' rise='-4000'>{icon}</span>{capacity}% </span>";
		format-warning = "<span><span font='32px' rise='-4000'>{icon}</span> {capacity}% </span>";
		format-critical = "<span><span font='32px' rise='-4000'>{icon}</span> {capacity}%</span>";
		format-charging = "<span><span font='32px' rise='-4000'> </span> {capacity}%</span>";
		format-plugged = "<span><span font='32px' rise='-4000'></span> {capacity}%</span>";
		format-alt = "<span><span font='32px' rise='-4000'>{icon}</span> {time}</span>";
		format-full = "<span><span font='32px' rise='-4000'> </span></span>";
		format-icons = [" " " " " " " " " "];
		tooltip-format = "{time}";
	};

	network = {
		format-wifi = "<span font='26px'> </span>";
		format-ethernet = "<span foreground='#403d52' font='26px'>󰤭</span>";
		format-linked = "{ifname} (No IP) ";
		format-disconnected = "<span foreground='#403d52'>󰤭</span>";
		tooltip-format-wifi = "Signal Strength: {signalStrength}%";
		on-click = "kitty -e nmtui";
	};

	pulseaudio = {
		on-click = "pavucontrol";
		on-scroll-up = "pactl set-sink-volume @DEFAULT_SINK@ +2%";
		on-scroll-down = "pactl set-sink-volume @DEFAULT_SINK@ -2%";
		on-right-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
		format = "<span><span font='26px' rise='-4000'>{icon}</span> {volume}%</span>";
		format-muted = "<span font='26px' rise='-4000'></span>  Muted";
		format-icons = {
			headphone = " ";
			hands-free = " ";
			headset = " ";
			phone = " ";
			portable = " ";
			car = " ";
			default = [" " " "];
		};
	};


	bluetooth = {
		format = "<span font='18px'></span>";
		format-disabled = "<span foreground='#403d52'></span>";
		format-connected = "<span font=188px'> </span>";
		tooltip-format = "{device_alias}";
		tooltip-format-connected = "";
		tooltip-format-enumerate-connected = "{device_alias}";
		on-click = "rfkill toggle bluetooth";
		on-click-right = "blueman-manager";
	};

	tray = {
	  icon-size = 21;
	  spacing =  10;
	};

      };
    };



    style = ''
	    * {
  border: none;
  border-radius: 0;
  padding: 0;
  font-family: "GeistMono NFM";
  font-weight: bold;
  font-size: 13px;
  min-height: 0;
  padding-bottom: 1px;
}

window#waybar {
  background: transparent;
  color: #e0def4;
}

#clock {
  padding-left: 15px;
  padding-right: 10px;
  color: #f6c177;
  background-color: #191724;
}

#workspaces {
  background-color: #191724;
  padding-left: 5px;
  border-radius: 0 0 8px 0;
}

#workspaces button {
  padding: 5px;
  color: #403d52;
  margin-right: 2.5px;
  margin-left: 2.5px;
}

#workspaces button.active {
  color: #ebbcba;
}

@keyframes blink {
    to {
        color: #e0def4;
    }
}

#workspaces button.urgent {
  color: #eb6f92;
  animation-name: blink;
  animation-duration: 0.5s;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

#workspaces button:hover {
  color: #c4a7e7;
  border-color: #c4a7e7;
}

#window {
  background-color: #c4a7e7;
  color: #191724;
  border: 1px solid #a388c2;
  border-top: none;
  padding-left: 10px;
  padding-right: 10px;
  border-radius: 0px 0px 10px 10px;
  margin-left: 10px;
  margin-right: 10px;
}

#tray {
  background-color: #191724;
  padding-right: 10px;
  padding-left: 10px;
  border-right: 1px solid #1f1d2e;
}

#pulseaudio {
  color: #9ccfd8;
  padding-right: 10px;
  padding-left: 10px;
  background-color: #191724;
}

#network {
  margin-left: 32px;
  margin-right: 12px;
}

#bluetooth,
#pulseaudio,
#battery {
  margin-right: 12px;
}

#battery {
  margin-left: 0;
}

#pulseaudio.muted {
  color: #191724;
  background-color: #eb6f92;
}

#pulseaudio.microphone {
  color: #31748f;
  background-color: #191724;
  padding-right: 15px;
}

#pulseaudio.source-muted.microphone {
  color: #191724;
  background-color: #ec5681;
}

.modules-right #custom-blank {
  background: #191724;
  border-radius: 0 0 0 10px;
}

.modules-right {
  border: 1px #1f1d2e solid;
  border-top: none;
  border-right: none;
  border-radius: 0 0 0 10px;
  padding-bottom: 0px;
  padding-right: 12px;
  background-color: #191724;
}

.modules-left #custom-blank {
  border-radius: 0 0 10px 0;
}

.modules-left {
  border: 1px #1f1d2e solid;
  border-top: none;
  border-left: none;
  border-radius: 0 0 10px 0;
  padding-bottom: 0px;
}'';
};
}
