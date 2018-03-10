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
    # Create your new executable script
    cp shlintro.sh "$_s"
    chmod 755 "$_s"
    # Run the new script
    "./$_s" --help
    # Create a test runner skeleton for the new script and run it
    cp test_shlintro.sh "test_${_s}"
    "./test_${_s}"

#### Example

    $ _s="new_script.sh"
    $ # Create your new executable script
    cp shlintro.sh "$_s"
    chmod 755 "$_s"
    $ # Run the new script
    "./$_s" --help
    $ cp shlintro.sh "$_s"
    $ # Create a test runner skeleton for the new script and run it
    cp test_shlintro.sh "test_${_s}"
    $ chmod 755 "$_s"
    $ # Run the new script
    $ "./$_s" --help
    "./test_${_s}"
    Usage: new_script.sh [OPTION]... [FILES]...

      FIXME: describe what this script is for
      FIXME: if not processing files (ie strict argument parsing) delete:
        a) [FILES]... from above; b) --) case statement; c) [FILES]... while loop

    Example:
      new_script.sh -e first --example second a b c

    Options:
      -h, --help            Show this help and exit
      -e, --example ARG     Print example "ARG" information
    $ # Create a test runner skeleton for the new script and run it
    $ cp test_shlintro.sh "test_${_s}"
    $ "./test_${_s}"
    *[new_script.sh]* Test 'new_script.sh ' returned $?=0
    *[new_script.sh]* Test 'new_script.sh --help' returned $?=0
    *[new_script.sh]* Test 'new_script.sh -h' returned $?=0
    *[new_script.sh]* Test 'new_script.sh -e arg' returned $?=0
    *[new_script.sh]* Test 'new_script.sh --example arg' returned $?=0
    *[new_script.sh]* Test 'new_script.sh -x' returned $?=1
    *[new_script.sh]* Test 'new_script.sh --xx' returned $?=1
    SUCCESS, as expected

## **Resources for writing Bash shell scripts**

* [`man bash`](https://tiswww.case.edu/php/chet/bash/bash.html)
* [google.com?q=bash+shell+scripting](http://google.com?q=bash+shell+scripting)
* [Kevin van Zonneveld's Best Practices for Writing Bash
  Scripts](http://kvz.io/blog/2013/11/21/bash-best-practices/) (partially
  distilled to make `shlintro.sh`)
* [FIXME](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)
* [The read builtin command](http://wiki.bash-hackers.org/commands/builtin/read)

<!--

# TODO

* Create a graph out of:

    git log --follow --stat shlintro.sh | grep 'changed\|insertion\|deletion

    git log --follow --stat shlintro.sh | grep '^ shlintro'

-->
