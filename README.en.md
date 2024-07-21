# atcoder-starter

[日本語版](README.md)

⚠️ This repository is *unofficial*.

atcoder-starter builds an OCaml environment of AtCoder
(see <https://img.atcoder.jp/file/language-update/language-list.html>).

## Usage

After completing all the steps below,
you can use the same compiler and packages as AtCoder in `atcoder-workspace` directory.
If you use another directory, replace `atcoder-workspace` with it.

1. `cd atcoder-workspace`
2. `opam switch create . 5.0.0`
3. `eval $(opam env)`
4. `git clone https://github.com/samosica/ocaml-atcoder-starter.git`
5. `opam install ocaml-atcoder-starter/ --deps-only`
    <!-- markdownlint-disable-next-line MD013 -->
6. (for Visual Studio Code + OCaml Platform extension users) `opam install ocaml-lsp-server ocamlformat ocamlformat-rpc`
