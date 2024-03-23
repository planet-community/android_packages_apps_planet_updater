{ pkgs, ... }:

{
  packages = (with pkgs.androidSdkPackages; [
    build-tools-34-0-0
    cmdline-tools-latest
    emulator
    platform-tools
    platforms-android-34
  ]) ++ (with pkgs.androidStudioPackages; [
    stable
  ]);

  languages = {
    nix.enable = true;
    java = {
      enable = true;
      gradle.enable = true;
    };
  };
}
