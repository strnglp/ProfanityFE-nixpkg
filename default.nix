{ stdenv, bundlerEnv, makeWrapper, fetchFromGitHub, ruby }:
let
env = bundlerEnv {
  name = "ProfanityFE";
  inherit ruby;
  # Let the ruby repo be a ruby repo
  gemfile = "${src}/Gemfile";
  lockfile = "${src}/Gemfile.lock";
  # This is nix specific so it can live with the nix package
  gemset = ./gemset.nix;
};
src = fetchFromGitHub {
  owner = "strnglp";
  repo = "ProfanityFE";
  rev = "9e5baf0c8b9dc0679ecf24fce713909717e05e54";
  sha256 = "h5zjIcF4WS7T1M1EbtRcyWZ52kxA4mB6MBxIWRhBqp8=";
};
in 
{
  profanity = stdenv.mkDerivation {
    pname = "ProfanityFE";
    version = "0.1.0";
    buildInputs = [ makeWrapper env.ruby ];
    src = src;
    buildPhase = ''
      mkdir -p $out/bin
      mkdir -p $out/lib
    '';
    installPhase = ''
      cp -r $src/** $out/lib
      ln -s $out/lib/profanity.rb $out/bin/ProfanityFE
      chmod +x $out/bin/ProfanityFE 
      wrapProgram $out/bin/ProfanityFE --set GEM_HOME "${env}/${env.ruby.gemPath}"
    '';
  };
}
