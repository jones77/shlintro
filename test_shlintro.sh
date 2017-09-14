#!/usr/bin/env bash
__name="$(echo $(basename "${BASH_SOURCE[0]}") | sed 's/^test_//')"
t() {
    echo "Testing: $__name $@"
    ./$__name "$@" \
        >/dev/null 2>&1
    # if testing fails comment out ^^ redirection for debugging
}
e() {
    printf "$@\n*** *** *** TEST FAILURE *** *** ***\n"
    exit 1
}
# good options
# FIXME: Can we generate this from the usage?
t           || e "unexpected nonzero \$?=$?"
t --help    || e "unexpected nonzero \$?=$?"
t -h        || e "unexpected nonzero \$?=$?"
# bad options
t -x        && e "unexpected zero \$?=$?"
t --xx      && e "unexpected zero \$?=$?"
printf "SUCCESS, as expected\n"
