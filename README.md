# `shlintro.sh`

*A minimal template for a usable shell script*

## **Usage**

Copy `shlintro.sh` when you create a new shell script.

### Offline

    cp /path/to/shlintro.sh new_script.sh

### Online

    curl https://raw.githubusercontent.com/jones77/shlintro/master/shlintro.sh >new_script.sh

### Tutorial

    _s="new_script.sh"

    # Create executable script
    cp shlintro.sh "$_s" && chmod 755 "$_s"

    # Run the dummy script
    "./$_s" --help

    # Create a test runner skeleton for the new script and run it
    cp test_shlintro.sh "test_${_s}" && "./test_${_s}"

Should output:

    Testing: new_script.sh
    Testing: new_script.sh --help
    Testing: new_script.sh -h
    Testing: new_script.sh -x
    Testing: new_script.sh --xx
    SUCCESS, as expected

## **Resources for writing Bash shell scripts**

* [`man bash`](https://tiswww.case.edu/php/chet/bash/bash.html)
* [google.com?q=bash+shell+scripting](http://google.com?q=bash+shell+scripting)
* [Kevin van Zonneveld's Best Practices for Writing Bash
  Scripts](http://kvz.io/blog/2013/11/21/bash-best-practices/) (partially
  distilled to make `shlintro.sh`)
* [FIXME](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)

<!--

# TODO

* Create a graph out of:

    git log --follow --stat shlintro.sh | grep 'changed\|insertion\|deletion

    git log --follow --stat shlintro.sh | grep '^ shlintro'

-->
