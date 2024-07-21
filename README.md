# atcoder-starter

**注意：このリポジトリは非公式です。**

AtCoder の OCaml 実行環境 ([参考](https://img.atcoder.jp/file/language-update/language-list.html))を構築します。

## 使い方

以下の設定を行なうと、`atcoder-workspace`ディレクトリ内で AtCoder の OCaml 実行環境と同じコンパイラ、パッケージが使えるようになります。
違うディレクトリを使いたいときは`atcoder-workspace`の部分を置き換えてください。

1. `cd atcoder-workspace`
2. `opam switch create . 5.0.0`
3. `eval $(opam env)`
4. `git clone https://github.com/samosica/ocaml-atcoder-starter.git`
5. `opam install ocaml-atcoder-starter/ --deps-only`
    <!-- markdownlint-disable-next-line MD013 -->
6. (Visual Studio Code で OCaml Platform 拡張機能を使う場合) `opam install ocaml-lsp-server ocamlformat ocamlformat-rpc`

## メモ

- Visual Studio Code の integrated terminal で`dune build`が動かないことがあった。
  `eval $(opam env)`で直ったが、毎回同じコマンドを実行するのは大変なので、`opam init --enable-shell-hook`で自動で行われるようにした。
