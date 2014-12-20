# Contributing Guide

## Required software

Here is the required software you need to contribute:

* Some sort of LaTeX distribution. LaTeX is the markup language in which LYSA is
  written. The target distribution is [TeXLive][texlive], but it probably works
  on other distributions.

* [git][gitscm] - we use git for version control. If you've never used git
  before, I suggest reading [Pro Git][progit] by Scott Chacon.

* Some text editor. [Emacs][emacs] is particularly good for LaTeX, although it
  does have quite a bit of a learning curve.

[emacs]: https://www.gnu.org/software/emacs/
[gitscm]: http://git-scm.com/
[progit]: http://git-scm.com/book/en/v2
[texlive]: https://www.tug.org/texlive/

### Recommended software

#### Git flow

We use [gitflow][gitflow]for our branch model. The model isn't perfect, but it
works well enough, and most people are familiar with it.

![A graph illustrating gitflow](http://nvie.com/img/git-model@2x.png)

The [central repository][centrepo] is merge-only. Every developer should
maintain their own fork of the repo, and then submit a pull request when they
want their changes to be merged. Note that the central repository does not have
feature branches. Your pull request should target the `develop` branch.
You don't have to use gitflow yourself, (that is, your branch names
don't have to follow the gitflow prefixes), but you do need to follow
the basic scheme. That is, you do all work based on the `develop`
branch.

[centrepo]: https://github.com/learnmath/lysa
[gitflow]: http://nvie.com/posts/a-successful-git-branching-model/

## Graphs and Code

* For the time being, you can generate a graph with anything you want, as long
  as it's open-source. You just have to include the code to generate the graph
  (in case we want to change it). I recommend [Sage][sage].

* We might use [Idris][idris] as an interactive proof assistant. The other
  candidates are [Coq][coq] and [Agda][agda].

* Turing-complete code examples should be written in [Haskell][hs]. If you don't
  know Haskell, please see [bitemyapp's guide][learnhs].

[agda]: http://wiki.portal.chalmers.se/agda/pmwiki.php
[coq]: https://coq.inria.fr/
[hs]: https://www.haskell.org/haskellwiki/Haskell
[idris]: http://www.idris-lang.org/
[learnhs]: https://github.com/bitemyapp/learnhaskell
[sage]: http://www.sagemath.org/
