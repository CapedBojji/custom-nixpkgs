{pkgs, ... }:
let 
    src = pkgs.fetchFromGitHub {
        owner = "VillaErnest";
        repo = "run-in-roblox";
        rev = "master";
        sha256 = "sha256-ioigZXB51gv4PlWX8fcYYH/QKlFFUSPK4fLjuGnCMW4="; 
    };
in
pkgs.rustPlatform.buildRustPackage {
  pname = "run-in-roblox";
  inherit src;

  version = "0.1.0";
  cargoHash = "sha256-3KAWtpNkn+BMt2je6mwcR6F5RxG9jRiKCdgiwUUxcyE=";

  meta = with pkgs.lib; {
    description = "Tool to run places, models, or scripts inside Roblox Studio with command line integration";
    longDescription = ''
      run-in-roblox is a command-line tool that enables running Roblox places, 
      models, or individual scripts inside Roblox Studio. It pipes output from 
      Roblox Studio back to stdout/stderr, allowing traditional automation tools 
      to work alongside Roblox development workflows.
    '';
    homepage = "https://github.com/VillaErnest/run-in-roblox";
    license = licenses.mit;
    maintainers = [ "BlackBojji" ];
    platforms = platforms.all;
  };
}
