{pkgs, inputs, ...}:
{
  home.packages = with pkgs; [
    ripgrep
    fd
    bat
    protonup-qt
    byedpi
    vesktop
  ];
}
