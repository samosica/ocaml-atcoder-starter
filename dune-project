(lang dune 3.16)

(name atcoder-starter)

(generate_opam_files true)

(source
 (github samosica/ocaml-atcoder-starter))

(authors "samosica <samosic4@gmail.com>")

(maintainers "samosica <samosic4@gmail.com>")

(license MIT-0)

(documentation https://github.com/samosica/ocaml-atcoder-starter)

(package
 (name atcoder-starter)
 (synopsis "Build the OCaml environment in AtCoder (unofficial)")
 (depends
  (ocaml (= 5.0.0))
  (dune (>= 3.13.0))
  (num (= 1.4))
  (containers (= 3.12))
  (core (= v0.16.1))
  (iter (= 1.7))
  (batteries (= 3.6.0)))
 (allow_empty))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
