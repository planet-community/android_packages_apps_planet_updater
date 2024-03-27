{ pkgs, ... }:
{
  packages = with pkgs; [
    androidSdkPackages.cmdline-tools-latest
    androidSdkPackages.emulator
    androidSdkPackages.platform-tools
    androidStudioPackages.stable
  ];
  
  enterShell = ''
    export ANDROID_SDK_ROOT="$HOME/Android"
    export ANDROID_HOME="$HOME/Android"
    export PATH="$PATH:$ANDROID_HOME/Sdk/tools/bin:$ANDROID_HOME/Sdk/platform-tools"
    export IS_OUTSIDE_BSP="true"
  '';

  languages = {
    nix.enable = true;
    java = {
      enable = true;
      jdk.package = pkgs.jdk21;
      gradle.enable = true;
    };
  };

}
