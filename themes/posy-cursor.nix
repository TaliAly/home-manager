
{pkgs}:
{
  pkgs.stdenv.mkDerivation {
    name = "posy-cursors";

    src = pkgs.fetchurl {
      url = https://github.com/simtrami/posy-improved-cursor-linux/tree/bd2bac08bf01e25846a6643dd30e2acffa9517d4/Posy_Cursor"";
      sha256 = "1rm52vslz7cybs2ldcjngip9fkbav1yp9dm6f2i62f05cby3s9rq";
    };

    dontBuild = true;

    installPhase = ''
    mkdir -p $out/share/icons
    mv Posy_Cursor "$out/share/icons/Posy's Cursor"
    '';
    };
    size = 16;
    x11.enable = true;
    };
  };
}
