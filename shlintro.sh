#!/usr/bin/env bash
set -o nounset && set -o errexit && set -o pipefail
# set -xtrace && set -verbose
__usage() { cat <<USAGE
Usage: ${__basename} [OPTION]... [FILES]...

  FIXME: a) Update this description paragraph, describing what the script's for
  b) if this script doesn't process files (ie uses strict argument parsing)
     delete '[FILES]...' from the above usage string
  c) based on b) fix the '--)' case statement.

Example:
  ${__basename} -e first --example second a b c

Options:
  -h, --help            Show this help and exit
  -e, --example ARG     Print example "ARG" information
USAGE
};__shopts="he:"
__longopts="help,example:"
__basename="$(      basename "${BASH_SOURCE[0]}" )"
__dirname="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
__fatal(){ [ -n "$@" ]&&printf "$__basename: $@\n\n";__usage;exit 1;}
__args=$(set +e && getopt -T || if (( $? == 4 )); then
    getopt -s"bash" -o"${__shopts}" -l"${__longopts}" -n"${__basename}" -- "$@"
else
    echo 'bad getopt version: getopt -T || (( $? == 4 )) is false'; exit 1
fi) && eval set -- "${__args}" || __fatal ""  # If we call __fatal "" then
# getopt has already printed invalid option -- 'x' or unrecognized option '--x'
while (( $# ))
do
    case $1 in
	-h|--help) __usage && exit 0 ;;
	--) :  # strict argument parsing, continue && shift
	# --) shift && break  # [FILES]... argument parsing, shift && break
            ;;
        -e|--example)
            shift && echo "The example option's argument is: $1"
	    ;;
	*) __fatal "unknown option: $1" ;;
   esac && shift
done
while (( $# ))  # delete while loop if not using [FILES]... argument parsing
do
    echo "Do something with: $1" && shift  # FIXME: read from stdin?
done
