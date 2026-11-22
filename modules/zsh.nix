{pkgs, inputs, ...}: {
      programs.zsh = {
  initContent = ''
  PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b%# '
'';
  enable = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;
  enableCompletion = true;
  shellAliases = {
    ls = "ls --color=auto";
    grep = "grep --color=auto";
    homeRebuild = "home-manager switch --flake ~/nix";
  };
  history = {
        expireDuplicatesFirst = true;
        ignoreAllDups = true;
        size = 10000;
      };
   oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "history"
          "wd"
        ];
      };
};
}
