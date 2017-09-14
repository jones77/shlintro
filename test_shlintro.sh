#!/usr/bin/env bash
__name="$(echo $(basename "${BASH_SOURCE[0]}") | sed 's/^test_//')"
__prefix="*[$__name]*"
t() {
    "./$__name" "$@"  >/dev/null 2>&1
    # comment out ^^ to debug
    rcode=$?
    echo "$__prefix Test '$__name $@' returned \$?=$rcode"
    return $rcode
}
e() {
    printf "$@\nTEST FAILURE\n" | sed s"/^/$__prefix /"
    exit 1
}
# good options
# FIXME: Can we generate this from the usage?
t               || e "unexpected nonzero \$?=$?"
t --help        || e "unexpected nonzero \$?=$?"
t -h            || e "unexpected nonzero \$?=$?"
t -e arg        || e "unexpected nonzero \$?=$?"
t --example arg || e "unexpected nonzero \$?=$?"
# bad options
t -x   && e "unexpected zero \$?=$?"
t --xx && e "unexpected zero \$?=$?"
printf "SUCCESS, as expected\n"
