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
  cargoHash = pkgs.lib.fakeHash;
}
