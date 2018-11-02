#!/bin/bash
alias n="nnn -i"

# https://github.com/jarun/nnn
export NNN_BMS='doc:~/Documents/SoftLeader;g:~/GitHub;dl:~/Downloads/;d:~/Desktop;t:~/tmp;go:~/go/src/github.com'

# https://github.com/jarun/nnn/tree/master/scripts
# Shell completion
_nnn () {
    COMPREPLY=()
    local IFS=$' \n'
    local cur=$2 prev=$3
    local -a opts opts_with_args
    opts=(
        -c
        -e
        -h
        -i
        -l
        -p
        -S
        -v
    )
    opts_with_arg=(
        -c
        -p
    )

    # Do not complete non option names
    [[ $cur == -* ]] || return 1

    # Do not complete when the previous arg is an option expecting an argument
    for opt in "${opts_with_arg[@]}"; do
        [[ $opt == $prev ]] && return 1
    done

    # Complete option names
    COMPREPLY=( $(compgen -W "${opts[*]}" -- "$cur") )
    return 0
}

complete -F _nnn nnn

# cd on quit
export NNN_TMPFILE="/tmp/nnn"

n()
{
        nnn "$@"

        if [ -f $NNN_TMPFILE ]; then
                . $NNN_TMPFILE
                rm $NNN_TMPFILE
        fi
}
