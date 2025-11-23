#!/usr/bin/env bash
set -eu

SCRIPT_VERSION=2025-10
SWITCH=.
VSCODE=

usage(){
    cat <<EOF
Usage: $0 [-h | --help] [-s | --switch SWITCH] [--vscode]
Build an OCaml environment for AtCoder (version $SCRIPT_VERSION)

Options:
    -h, --help                  help
    -s, --switch SWITCH         specify switch name (default: .)
    --vscode                    install packages for VSCode OCaml Platform
EOF
}

read_args(){
    while [ $# -ge 1 ]; do
        case "$1" in
            -h | --help) usage; exit 0;;
            -s | --switch) SWITCH=$2; shift 2;;
            --vscode) VSCODE=y; shift 1;;
            -*) usage; exit 1;;
            *) ;;
        esac
    done
}

main(){
    opam switch create "$SWITCH" ocaml-variants.5.3.0+options ocaml-option-flambda.1
    eval "$(opam env)"
    opam install num=1.6 zarith=1.14 containers=3.16 core=v0.17.1 iter=1.9 batteries=3.9.0 --yes
    if [ -n "$VSCODE" ]; then
        opam install ocaml-lsp-server ocamlformat ocamlformat-rpc --yes
    fi
}

read_args "$@"
main
