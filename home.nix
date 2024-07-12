{ config, pkgs, lib, ... }:
{

	home.username = "takis";
	home.homeDirectory = "/home/takis";
	home.stateVersion = "24.05"; # Please read the comment before changing.
	home.packages = with pkgs; [
		firefox
		vesktop
		obsidian
		prismlauncher
		brave
		youtube-music
		transmission-qt
		podman-desktop
		opentabletdriver
		mpv
		ani-cli
		steam

		ffmpeg
		clipman
	];
	nixpkgs = {
		config = {
			allowUnfree = true;
			allowUnfreePredicate = (_: true);
		};
	};

	imports = [
	  ./theme.nix
	  ./modules.nix
	];

# Home Manager is pretty good at managing dotfiles. The primary way to manage
# plain files is through 'home.file'.
	home.file = {
	};

	home.sessionVariables = {
		EDITOR = "nvim";
	};


	xdg.mimeApps = {
		enable = true;
		defaultApplications = {
			"inode/directory" = "org.gnome.Nautilus.desktop";
			"x-scheme-handler/http" = "brave.desktop";
			"x-scheme-handler/https" = "brave.desktop";
			"x-scheme-handler/chrome" = "brave.desktop";
			"text/html" = "brave.desktop";
			"application/x-extension-htm" = "brave.desktop";
			"application/x-extension-html" = "brave.desktop";
			"application/x-extension-shtml" = "brave.desktop";
			"application/xhtml+xml" = "brave.desktop";
			"application/x-extension-xhtml" = "brave.desktop";
			"application/x-extension-xht" = "brave.desktop";
			"x-scheme-handler/discord-1221314350216646828" = "discord-1221314350216646828.desktop";
		};
	};

	programs.home-manager.enable = true;
}
