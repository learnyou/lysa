Copyright © 2014-2015 Peter Harpending. <pharpend2@gmail.com>

Copying and distribution of this file, with or without modification, are
permitted in any medium without royalty provided the copyright notice and this
notice are preserved.  This file is offered as-is, without any warranty.

# Learn You Some Algebras for Glorious Good!

This is a math book, licensed under the GNU FDL.

# Building

To build the project from source, you'll need to have TeX installed, along with
a number of packages. A list can be found in the "Contributing" section of this
document. I'm sure you can build the project on Windows, I just don't know how
(most of us use Linux).

```
git clone https://gitlab.com/lysa/lysa.git
cd lysa/book
./build
```

If you don't use git, you can get a tarball from
<https://gitlab.com/lysa/lysa/repository/archive.tar.gz>. If you don't know what
a tarball is, you can get a Zip archive from
<https://gitlab.com/lysa/lysa/repository/archive.zip>.

The build script is not dangerous, you can look at it if you want. It builds the
book, and generates it into a file called `lysa.pdf` in the `book/`
directory. If you have a slow computer, it might take about 30 seconds or so to
build. On a fast computer, it will take less than a second. We don't include the
PDF file in the git tree because it's a binary file, and thus causes merge
conflicts if we try to track it.

If you like chatting on IRC, come see us in `#lysa` on FreeNode. If you don't
know what IRC is, or you don't have a client set up, you can connect through
[FreeNode's webchat][webchat].

If you notice any errors, don't be shy to report them in the
[issue tracker](//github.com/pharpend/lysa/issues). If you have any suggestions
for improving LYSA, also post them in the issue tracker (or bring them up in the
IRC channel).

If you have any questions about LYSA (or math), feel free to ask in the channel,
or in the issue tracker.

[webchat]: http://webchat.freenode.net/?channels=lysa


# License

LYSA is licensed under the [GNU Free Documentation License][gfdl]. The license
can be found in the LICENSE file in the project root.

[gfdl]: https://gnu.org/licenses/fdl.html

# Contributing

The remainder of this document is for people who want to contribute.


## Software

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

### TeXLive

TeX is the markup language in which LYSA is written, so you need a TeX
distribution to compile it. Note that if you are only interested in the PDF
file, we publish regular builds [here](http://184.164.72.39/lysa/). The target
TeX distribution is [TeXLive][texlive], but it probably works on other TeX
distributions. Below you can find installation instructions for select operating
systems. If you don't see your operating system there, but know what software is
needed, please add it and send a pull request.

![Trustworthiness by file extension. Credit: xkcd](http://imgs.xkcd.com/comics/file_extensions.png)
Credit: xkcd


#### Gentoo

**Warning**: this will spawn a ton of processes, but will make the build a lot
faster (from several hours to a few minutes). If your memory is precious, use
`-av` instead of `-jav`.

    # emerge -jav dev-tex/biblatex dev-texlive/texlive-latexrecommended dev-texlive/texlive-xetex

#### Ubuntu 12.04

    # apt-get install biblatex texlive texlive-latex-extra texlive-bibtex-extra texlive-xetex texlive-math-extra texlive-latex3

#### Ubuntu 14.04

    # apt-get install texlive-latex-extra texlive-bibtex-extra texlive-xetex texlive-latex3 texlive-fonts-recommended

[texlive]: https://www.tug.org/texlive/

## Content

If you add new *content* to the book, such as a new chapter, or a substantial
portion of text, please feel free to add yourself to the `\author` field in
`book/lysa.ltx` (you don't have to, if you don't want to). If you merely
suggested changes, or made a number of trivial changes, add yourself to the
`\editors` field.

### Graphs and Code

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

## Git

The git repo is hosted on GitLab. If you have a GitLab account, the easiest
thing to do is to fork the repo with GitLab, and then submit a merge request. If
you have a Git**Hub** account, you can log into Git**Lab** with your Git**Hub**
account.

![](http://i.imgur.com/0IAINpq.png)

If you don't use GitLab, and don't want to make a GitLab account, then you can
host your git repository elsewhere (such as Gitorious or GitHub), and then email
pharpend <<pharpend2@gmail.com>> with a link to the repository. It's recommended
that you copy & paste the diff into the email, because pharpend will be less
grumpy if you do. To generate the diff, run

```
git remote add upstream git@gitlab.com:lysa/lysa.git
git remote update
git diff upstream/master
```
### Committing

Try to make sure that each commit only contains one change. It's a lot less
annoying to have to sift through 20 commits each with 1 different change than 1
commit with 20 different changes. If the change is difficult to summarize in one
line, then you should probably split up the commit with `git add -p`.

When in doubt, follow the
[Erlang OTP Git Commit Guide](https://github.com/erlang/otp/wiki/Writing-good-commit-messages).
