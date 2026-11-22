{ config, pkgs, ... }:
{

imports = [
        ./modules
];

home = {
    username = "orpheus";
    homeDirectory = "/home/orpheus";
    stateVersion = "26.05";
};

programs.home-manager.enable = true;
}
