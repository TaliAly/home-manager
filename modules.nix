{ config, lib, ... }:

{
	imports = [
		./modules/hypr
		./modules/tui
		./modules/desktop
		./modules/recording
	];
}
