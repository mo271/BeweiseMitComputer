# BeweiseMitComputer

Material für das Seminar "Du beweist noch händisch?!" bei der [Sommeruniversität 2024 des Studienwerks Villigst](
https://www.evstudienwerk.de/veranstaltungen/sommeruniversitaet/d-dimension-von-wissen-und-denken-konstruktion-und-kritik.html)

## Prerequisites

 - *The best way*: [Install lean on your computer](https://leanprover-community.github.io/get_started.html)
 - *The fast way*: [Try lean online](https://live.lean-lang.org/)

If you are new to Lean/mathlib, a fun way to begin is by playing the [the natural number game](https://adam.math.hhu.de/)!

In order to start with the files in this repo, you install lean on your computer (see link above)
you clone this repo and run
```shell
lake exe cache get
lake build
code .
```
The last step only opens vscode in case you want to use that.


## Resources

Docs, Tutorials, search engines

 - [mathlib4 documentation](https://leanprover-community.github.io/mathlib4_docs/)
 - [Mathematics in Lean tutorial](https://leanprover-community.github.io/mathematics_in_lean/)
 - [Moogle: Semantic search over mathlib4](https://www.moogle.ai/)
 - [Loogle searches of Lean and Mathlib definitions and theorems.](https://loogle.lean-lang.org/)
 - [abbreviations.json](https://github.com/leanprover/vscode-lean4/blob/master/vscode-lean4/src/abbreviation/abbreviations.json) for a list of symbols one can get by typing `\` in vscode.

Example projects:

  - [The Polynomial Freiman-Ruzsa Conjecture](https://teorth.github.io/pfr/) [blueprint](https://teorth.github.io/pfr/blueprint/)
  - [Sphere eversion](https://leanprover-community.github.io/sphere-eversion/) [blueprint](https://leanprover-community.github.io/sphere-eversion/blueprint/index.html)
  - [Prime number theorem](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/), [blueprint](https://alexkontorovich.github.io/PrimeNumberTheoremAnd/web/)
  - Your next project here!
