{
  curses = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00y9g79lzfffxarj3rmhnkblsnyx7izx91mh8c1sdcs9y2pdfq53";
      type = "gem";
    };
    version = "1.4.4";
  };
  ProfanityFE = {
    dependencies = ["curses" "rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      fetchSubmodules = false;
      rev = "eff6b07454d736f50c993ed3f454dfab248daf33";
      sha256 = "0pppagk41byi5mhlxwfhm2iy5bvnn935psc3k5xvcmmxr54rcd6m";
      type = "git";
      url = "https://github.com/strnglp/ProfanityFE.git";
    };
    version = "0.1.0";
  };
  rexml = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "05i8518ay14kjbma550mv0jm8a6di8yp5phzrd8rj44z9qnrlrp0";
      type = "gem";
    };
    version = "3.2.6";
  };
}
