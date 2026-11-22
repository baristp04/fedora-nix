{pkgs, input, ...}:
{
  systemd.user.services.byedpi = {
  Unit = {
    Description = "ByeDPI";
    After = [ "network.target" ];
  };
  Service = {
    ExecStart = "${pkgs.byedpi}/bin/ciadpi --disorder=1 --tlsrec=1+s";
    Restart = "on-failure";
  };
  Install.WantedBy = [ "default.target" ];
};

}
