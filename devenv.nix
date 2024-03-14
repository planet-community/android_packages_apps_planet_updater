{ pkgs, ... }:

{
  packages = with pkgs; [
    androidSdkPackages.build-tools-34-0-0
    androidSdkPackages.cmdline-tools-latest
    androidSdkPackages.emulator
    androidSdkPackages.platform-tools
    androidSdkPackages.platforms-android-34
    androidStudioPackages.stable
  ];

  languages.nix.enable = true;
  languages.java = {
    enable = true;
    jdk = pkgs.jdk17;
    gradle.enable = true;
  };
}
