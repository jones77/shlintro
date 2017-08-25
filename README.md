# `shlintro`

The minimal template for a usable shell script.

## Usage

**Copy** `shlintro` when you create a new shell script.

### Offline

    cp /path/to/_shlintro new_script.sh

### Online

    curl https://raw.githubusercontent.com/jones77/shlintro/master/shlintro >new_script.sh

### Tutorial

    _s="new_script.sh"                    # https://en.wikipedia.org/wiki/Don%27t_repeat_yourself
    cp shlintro "$_s" && chmod 755 "$_s"  # Create executable script
    "./$_s" --help                        # Run the dummy script
    $EDITOR "$_s"                         # Get to work

## Resources for writing Bash shell scripts

* [`man bash`](https://tiswww.case.edu/php/chet/bash/bash.html)
* [google.com?q=bash+shell+scripting](http://google.com?q=bash+shell+scripting)
* [Kevin van Zonneveld's Best Practices for Writing Bash
  Scripts](http://kvz.io/blog/2013/11/21/bash-best-practices/) (partially
  distilled to make `shlintro`)

## Ironies

* References to Don't Repeat Yourself when `shlintro` actively encourages shell
  scripts to copy paste their first ~50 from `shlintro`.
