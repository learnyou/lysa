# Contributing Guide

## Forking and Setting up a Local Copy

1) Fork the copy to your github account

2) Clone your copy of the repo

3) Create a new remote that points to the lm:lysa repo

[Github][forkarepo] has written a very helpful guide to completing this series of steps.

## Making Edits, Additions, and Deletions

We follow a loose version of [gitflow][nviegitflow] on the [central repository][centrepo], but this really only effects you in a few ways:

1) Do not make commits to master or develop

2) All merges need to be made using --no-ff

We recommend that, in order to protect yourself from forgetfulness, configuring git to not use fast forward:

```
git config merge.ff false
```

In order to make changes, the first thing you need to do is branch from develop. You can name your branch whatever, so long as it is relevant to the changes you are making. Do not, for instance, create f-omnibus which changes all the things. If you want to change or add content to different and unrelated areas--for instance, functors and rings--make two different branches to accomplish this. They can be sequential.

A sample command for creating a branch is shown below:

```
git checkout -b c-someContent develop
```

## Preparing for and Making a Pull Request

Once you have made all your changes, you want to get them merged into the central repo. Here is the process:

1) After your last commit on your branch, switch back to develop and sync with upstream

```
git checkout develop
git fetch upstream
git merge upstream/develop --no-ff
```

2) Merge your branch with develop using --no-ff

```
git merge c-someContent --no-ff
```

3) Resolve any merge conflicts

If you have merge conflicts, you should resolve them. This should guarantee that you do not have merge conflicts when you submit your pull request.

4) Push to your github cloned repo

```
git push origin develop
```

Please note that in order to do this, you will need to ensure your origin remote looks something like the following:

```
git remote origin -v
origin  git@github.com:yourUserName/lysa (fetch)
origin  git@github.com:yourUserName/lysa (push)
```

5) Submit a pull request

If we cannot look into the branch history, we may ask you to amend your commit to --no-ff and resubmit.

If we cannot automatically merge your pull request because it contains merge conflicts, we will ask you to fix them and resubmit.

Sometimes, writing content can take a while. If you have any questions about what you are doing, please check in with us on IRC.

[forkarepo]: https://help.github.com/articles/fork-a-repo/
[centrepo]: https://github.com/learnmath/lysa
[nviegitflow]: http://nvie.com/posts/a-successful-git-branching-model/

## Software

Here is the required software you need to contribute:

* Some sort of LaTeX distribution. LaTeX is the markup language in which LYSA is
  written. The target distribution is [TeXLive][texlive], but it probably works
  on other distributions.

* [git][gitscm] - we use git for version control. If you have never used git
  before, I suggest reading [Pro Git][progit] by Scott Chacon.

* Some text editor. [Emacs][emacs] is particularly good for LaTeX, although it
  does have quite a bit of a learning curve.

[emacs]: https://www.gnu.org/software/emacs/
[gitscm]: http://git-scm.com/
[progit]: http://git-scm.com/book/en/v2
[texlive]: https://www.tug.org/texlive/

#### Magit

If you use Emacs, as suggested above, you may be interested in
[Magit][magit]. Magit is an Emacs interface to git, which, unsurprisingly, is
much more pleasant than the git command line interface.

[magit]: https://magit.github.io/

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
