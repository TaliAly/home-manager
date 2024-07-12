{...}:
let
  bg =  "#232136";
  cur = "#2a273f";
  fgd = "#e0def4";
  cmt = "#6e6a86";
  cya = "#9ccfd8";
  grn = "#3e8fb0";
  ora = "#ea9a97";
  background = "#232136";
  border-color = ora;
in
{

  programs.wofi = {
    enable = true;

    settings = {
      location = "center";
      show = "drun";
      width = 550;
      height = 300;
      prompt = "search";
    };

    # FROM:
    # https://github.com/cement-drinker/wofi-rose-pine/blob/main/moon/style.css
    style = ''
window {
    margin: 0px;
    background-color: #232136;
    border-radius: 0px;
    border: 2px solid #eb6f92;
    color: #e0def4;
    font-family: 'JetBrains Mono Nerd Font';
    font-size: 16px;
}

#input {
    margin: 5px;
    border-radius: 0px;
    border: none;
    border-radius: 0px;;
    color: #eb6f92;
    background-color: #393552;
    
}

#inner-box {
    margin: 5px;
    border: none;
    background-color: #393552;
    color: #232136;
    border-radius: 0px;
}

#outer-box {
    margin: 15px;
    border: none;
    background-color: #232136;
}

#scroll {
    margin: 0px;
    border: none;
}

#text {
    margin: 5px;
    border: none;
    color: #e0def4;
} 

#entry:selected {
    background-color: #eb6f92;
    color: #232136;
    border-radius: 0px;;
    outline: none;
}

#entry:selected * {
    background-color: #eb6f92;
    color: #232136;
    border-radius: 0px;;
    outline: none;
}
'';
};
}
