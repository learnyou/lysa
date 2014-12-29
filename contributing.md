# Committing

Make sure that each commit only contains one change. It's a lot less annoying to
have to sift through 20 commits each with 1 different change than 1 commit with
20 different changes. If the change is difficult to summarize in one line, then
you should probably split up the commit with `git add -p`.

When in doubt, follow the
[Erlang OTP Git Commit Guide](https://github.com/erlang/otp/wiki/Writing-good-commit-messages).

# Software

Here is the required software you need to contribute:

* [git][gitscm] - we use git for version control. If you have never used git
  before, I suggest reading [Pro Git][progit] by Scott Chacon.

* Some text editor. [Emacs][emacs] is particularly good for LaTeX, although it
  does have quite a bit of a learning curve.
    + If you use Emacs, you may be interested in [Magit][magit]. Magit is an
    Emacs interface to git, which, unsurprisingly, is much more pleasant than
    the git command line interface.

[emacs]: https://www.gnu.org/software/emacs/
[gitscm]: http://git-scm.com/
[magit]: https://magit.github.io/
[progit]: http://git-scm.com/book/en/v2

## TeXLive

TeX is the markup language in which LYSA is written, so you need a TeX
distribution to compile it. Note that if you are only interested in the PDF
file, we publish regular builds [here](http://184.164.72.39/lysa/). The target
TeX distribution is [TeXLive][texlive], but it probably works on other TeX
distributions. Below you can find installation instructions for select operating
systems. If you don't see your operating system there, but know what software is
needed, please add it and send a pull request.

### Gentoo

**Warning**: this will spawn a ton of processes, but will make the build a lot
faster (from several hours to a few minutes). If your memory is precious, use
`-av` instead of `-jav`.

    # emerge -jav dev-tex/biblatex dev-texlive/texlive-latexrecommended dev-texlive/texlive-xetex

### Ubuntu 12.04

    # apt-get install biblatex texlive texlive-latex-extra texlive-bibtex-extra texlive-xetex texlive-math-extra texlive-latex3

[texlive]: https://www.tug.org/texlive/


# Content

If you add new *content* to the book, such as a new chapter, or a substantial
portion of text, please add yourself to the `\author` field in
`book/lysa.ltx`. If you merely suggested changes, or made a number of trivial
changes, add yourself to the `\editors` field.

## Graphs and Code

* For the time being, you can generate a graph with anything you want, as long
  as it's open-source. You just have to include the code to generate the graph
  (in case we want to change it). I recommend [Sage][sage].

* We might use [Idris][idris] as an interactive proof assistant. The other
  candidates are [Coq][coq] and [Agda][agda].

* Turing-complete code examples should be written in [Haskell][hs]. 
    + If you want to learn Haskell, please see [bitemyapp's guide][learnhs]. 
    + If you don't want to add code examples, you don't need to learn Haskell.
    + If you do want to add code examples, but don't want to learn Haskell, you
      can write your code in something else, and ask someone in the channel to
      translate it for you. That said, there is no guarantee someone will be
      willing to do so, though.

[agda]: http://wiki.portal.chalmers.se/agda/pmwiki.php
[coq]: https://coq.inria.fr/
[hs]: https://www.haskell.org/haskellwiki/Haskell
[idris]: http://www.idris-lang.org/
[learnhs]: https://github.com/bitemyapp/learnhaskell
[sage]: http://www.sagemath.org/
