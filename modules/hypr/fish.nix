{pkgs, ...}:
{
    programs.fish = {
	enable = true;
	interactiveShellInit = ''
          set fish_greeting # Disable greeting
	'';
	shellAliases = {
	    v = "nvim";
	    vim = "nvim";
	    ls = "eza --icons always -a";
	    ll = "eza --icons always -a -l";
	    pd = "podman";
	    editnix = "sudo -E nvim /etc/nixos/";
	    serve = "pnpm run --port 8000";
	    aliases = "alias | fzf";
	    ":q" = "exit";
	    hm = "home-manager";
	    rebuild-nixos = "sudo nixos-rebuild";


	    # Typos that I make
	    clera = "clear";
	    claer = "clear";
	};
    };
}
