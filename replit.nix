{ pkgs }: {
  deps = [
    pkgs.mutt-wizard
    pkgs.ed
    pkgs.oed
    pkgs.nvi
    pkgs.q
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}