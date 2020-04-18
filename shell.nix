{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "jogl-hello-world";

  targetPkgs = pkgs: [
    pkgs.maven
    pkgs.xlibs.libXxf86vm
    pkgs.xlibs.libX11
    pkgs.xlibs.libXrender
  ];
  
  runScript = "zsh";
  # mvn compile exec:java -Dexec.mainClass="com.javatpoint.jogl.HelloWorld"
}).env
