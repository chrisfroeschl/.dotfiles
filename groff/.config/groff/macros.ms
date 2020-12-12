\" File: macros.ms
\" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
\" Last Modified: Sat 12 Dec 2020 09:13:31 PM CET
\" License:
\" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
\" See :help license
\"
\" Description:
\" General .ms macros.

\" Indented paragraph with a dash.
.de IPD
.IP - 2
..

\" A more dynamic approach to source files more dynamically.
\" NOTE: Has to be combined with a preperation script."
.de CHAPTER
. NH 1
\\$1
. XS
\\$1
. XE
. so content/\\$1.ms
. bp
..

\" Override default font.
.ds FAM SourceSansPro
