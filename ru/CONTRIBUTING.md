# Contributing

This document is for people who want to contribute. If you have any questions,
you can bring them up in the IRC channel, open a bug, or email
`peter@harpending.org`.

So, you like LYSA and want to contribute. Great! Here are instructions,
separated by operating system:

## Getting set up

### Installing the needed software

#### Linux

*   **Arch**: Open a terminal, run the following command

        sudo pacman -S texlive-most git

*   **Gentoo**: Run this command in a terminal:

        sudo emerge -jav dev-vcs/git dev-tex/biblatex \ 
         dev-texlive/texlive-latexrecommended \

    **Warning**: this will spawn a ton of processes, but will make the
    build a lot faster (from several hours to a few minutes). If your
    memory is precious, use `-av` instead of `-jav`.

*   **Ubuntu 12.04**: Run this command in a terminal:

        sudo aptitude install biblatex texlive texlive-latex-extra \
         texlive-bibtex-extra texlive-math-extra texlive-latex3

    I'm sorry, but I couldn't come up with a longer command.

*   **Ubuntu 14.04**: Run this in a terminal:

        sudo aptitude install texlive-latex-extra texlive-bibtex-extra \
          texlive-latex3 texlive-fonts-recommended

*   **Debian**: Run this in a terminal:

        sudo aptitude install texlive-latex-extra texlive-bibtex-extra \
          texlive-latex3 texlive-fonts-extra

#### BSD

*   **FreeBSD**: Open a terminal, run these commands:

        sudo pkg install git texlive-full

### Building and viewing

*   **Linux, BSD, or OS X**: Run these commands in a terminal

        git clone https://github.com/learnyou/lysa.git
        cd lysa/en/book
        git submodule init
        git submodule update
        ./build

I don't use Windows, so I don't know how to build LYSA on
Windows. Sorry. If you know how, don't be shy to add instructions!

## If you've never used Git

[git](https://git-scm.herokuapp.com) is a version control
system. Basically, it allows us to have logs of the changes people make
to LYSA. git has a legendarily poor interface, so don't feel bad if you
have a hard time using it. Despite its poor interface, it is actually a
very nice program, which is why everybody uses it.

But, I digress. Git needs some configuration before you can use it. You
can run these terminal commands to configure it:

    git config --global core.editor "nano"
    git config --global user.name "Firstname Lastname"
    git config --global user.email "foo@bar.baz"

Replace `Firstname Lastname` and `foo@bar.baz` with your full name and
email, respectively.

TODO: Explain the file hierarchy.

## Adding Content

If you want to learn LaTeX, the markup language used, the
[LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX) is
excellent. However, LaTeX is pretty easy, so you can probably just pick
it up by looking at the source files.

The program we use to track changes to files is called
Git. [Chapter 2 of the Git book](https://git-scm.herokuapp.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
is a good minimal introduction to using git. Ideally, you would read the
entire book, but I don't think anyone is actually going to do that.

If you add a substantial amount of new content, such as a new chapter,
or a new section, please feel free to add yourself to the `\author`
field in `book/lysa.ltx` (you don't have to, if you don't want to). If
you suggested changes, or made a number of trivial changes, you can add
yourself to the `\editors` field.

### Graphs and Code

* For the time being, you can generate a graph with anything you want, as long
  as it's open-source. You just have to include the code to generate the graph
  (in case we want to change it). I recommend [Sage][sage].

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

### Committing

Try to make sure that each commit only contains one change. It's a lot
less annoying to have to sift through 20 commits each with 1 different
change than 1 commit with 20 different changes. If the change is
difficult to summarize in one line, then you should probably split up
the commit with `git add -p`.

When in doubt, follow the
[Erlang OTP Git Commit Guide](https://github.com/erlang/otp/wiki/Writing-good-commit-messages).

# Sources

The sources are listed in the book/bibliographies/lysa.bib file. Here
are some suggested readings:

* *[Abstract Algebra](http://en.wikibooks.org/wiki/Abstract_Algebra)*, from Wikibooks
* *[Foundations of Analysis](http://fmi.unibuc.ro/ro/pdf/2008/catedre/analiza/miculescu_r/Landau.pdf)*, by Edmund Landau
* *[The Foundations of Analysis](http://arxiv.org/pdf/1303.6576.pdf)*, by Larry Clifton
* *[Algebra](http://stealcode.com/misc/algebra/Hungerford_grad.pdf)*, by Thomas W. Hungerford
* *[Linear Algebra Done Right](http://genes.mit.edu/burgelab/yarden/linear_algebra_done_right.pdf)*, by Sheldon Axler
* *[Set Theory](https://logic.wikischolars.columbia.edu/file/view/Jech,+T.+J.+%282003%29.+Set+Theory+%28The+3rd+millennium+ed.%29.pdf)*, by Thomas Jech
* *[Foundations of Analysis](http://www.lemiller.net/media/classfiles/notes.pdf)*, by Joe Taylor

[emacs]: https://www.gnu.org/software/emacs/
[gitscm]: http://git-scm.com/
[magit]: https://magit.github.io/
[progit]: http://git-scm.com/book/en/v2
[texlive]: https://www.tug.org/texlive/
