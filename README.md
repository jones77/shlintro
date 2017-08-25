# `shlintro` &mdash; minimum template for a decent shell script

## Usage

Use shlintro as the basis for a new shell script

### Offline

  cp /path/to/_shlintro new_script.sh

### Online

  curl https://raw.githubusercontent.com/jones77/shlintro/master/shlintro >new_script.sh

### Tutorial

    _s="a_nice_shell_script.sh"
    cp shlintro "$_s" && chmod 755 "$_s"
    "./$_s" --help
    $EDITOR "$_s"

## Resources for writing Bash shell scripts

* [`man bash`](https://tiswww.case.edu/php/chet/bash/bash.html)
* [google.com?q=bash+shell+scripting](http://google.com?q=bash+shell+scripting)
* [Kevin van Zonneveld's Best Practices for Writing Bash
  Scripts](http://kvz.io/blog/2013/11/21/bash-best-practices/) (partially
  distilled to make `shlintro`)
