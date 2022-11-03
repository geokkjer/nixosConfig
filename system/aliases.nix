{
  environment.shellAliases = {
    # help
    # https://www.quora.com/Unix-Why-are-explanations-in-man-pages-so-bad
    # try tldr instead of man
    h = "tldr";

    # sys
    ls = "exa -l";
    cat = "bat";
    st = "curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -";
  };
}

