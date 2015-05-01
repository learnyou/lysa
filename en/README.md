### Nightly PDFs -> http://nightly.learnyou.org/lysa

# Learn You Some Algebras for Glorious Good!

This is a fun, easy-to-read, free and open source math textbook.

#### Links, in alphabetical order

* [Book outline][7]
* [Book website][6]
* [Contributing guide][4]
* [IRC Channel][2]
* [Issue tracker][3]
* [LaTeX style guide][8]
* [`/r/lysa` on Reddit][9]
* Main author's email: `peter@harpending.org`
* [Nightly PDFs][1]
* [Russian translation][5]

[1]: http://nightly.learnyou.org/lysa
[2]: http://webchat.freenode.net/?channels=lysa
[3]: https://github.com/learnyou/lysa/issues
[4]: #contributing
[5]: https://github.com/gazay/lysa
[6]: https://learnyou.org
[7]: OUTLINE.md
[8]: #latex-style-guide
[9]: https://www.reddit.com/r/lysa

# Contributing

## Getting set up

### Installing the needed software

This is separated by operating system. At the moment, LYSA has only been
built on Linux and BSD. I haven't tried OS X or Windows, simply because
I don't have access to them.

*   **Arch**: Open a terminal, run the following command

        sudo pacman -S git texlive-bibtexextra texlive-fontsextra \
            texlive-latexextra texlive-langextra

*   **Gentoo**: Run this command in a terminal:

        sudo emerge -jav dev-vcs/git dev-tex/biblatex \ 
            dev-texlive/texlive-latexrecommended \

    **Warning**: This will spawn a ton of processes, but will make the
    build a lot faster (from several hours to a few minutes). If your
    memory is precious, use `-av` instead of `-jav`.

    **Warning**: These instructions are pretty old, and I don't have
    access to this OS any more. Forgive me if the instructions don't
    work any more.

*   **Debian <7**: **Cannot be built with standard configuration**

    The version of TeXLive is too old to build LYSA. You need at least
    TeXLive 2014. The version shipping with Wheezy (Debian 7) is
    TexLive 2012. You would need to manually install TeXLive 2014, and
    then build LYSA.

*   **Debian >=8**: Run this in a terminal:

        sudo aptitude install git texlive-bibtex-extra \
            texlive-fonts-extra texlive-latex-extra texlive-latex-recommended \
            texlive-math-extra 
        tlmgr init-usertree
        tlmgr --usermode install newtxmf

*   **FreeBSD**: I haven't been able to build LYSA on FreeBSD, but I'm
    not a FreeBSD expert. Here's what I tried:

        sudo pkg install texlive-full git
        tlmgr --usermode init-usertree
        tlmgr --usermode install newtxmf

*   **Mac OS X**: I don't use, nor do I have access to Mac OS X, so I
    don't know how to build LYSA on Mac OS X. Sorry. If you know how,
    don't be shy to add instructions!

*   **Ubuntu <= 12.04**: Run this command in a terminal:

        sudo aptitude install biblatex texlive texlive-latex-extra \
         texlive-bibtex-extra texlive-math-extra texlive-latex3

    **Warning**: These instructions are pretty old, and I don't have
    access to this OS. (These instructions were added by someone
    else). Forgive me if they don't work any more.

*   **Ubuntu > 12.04**: Run this in a terminal:

        sudo aptitude install texlive-latex-extra texlive-bibtex-extra \
          texlive-latex3 texlive-fonts-recommended

    **Warning**: These instructions are pretty old, and I don't have
    access to this OS. (These instructions were added by someone
    else). Forgive me if they don't work any more.

*   **Windows**: I don't use, nor do I have access to a machine running
    Windows, so I don't know how to build LYSA on Windows. Sorry. If you
    know how, don't be shy to add instructions!

### Cloning & Building

Run these commands in a terminal

    git clone https://github.com/learnyou/lysa.git
    cd lysa
    git submodule init
    git submodule update
    cd en/book
    ./lysabuild


## If you've never used Git

[git](https://git-scm.herokuapp.com) is a version control
system. Basically, it allows us to have logs of the changes people make
to LYSA. git has a legendarily poor interface, so don't feel bad if you
have a hard time using it. Despite its poor interface, it is actually a
very nice program, which is why everybody uses it.

I highly recommend reading [Chapter 2 of the Git book][gitch2] if you
haven't already, because it covers basic configuration and usage of
Git. 

Ideally, you would read the entire book, but I don't think anyone is
actually going to do that.

[gitch2]: https://git-scm.herokuapp.com/book/en/v2/Git-Basics-Getting-a-Git-Repository

## Adding Content

The English version of the book is written in a markup language called
[LaTeX](https://en.wikibooks.org/wiki/LaTeX). LaTeX is pretty easy, so
you can probably pick it up just from reading the source for the
book. If you have any trouble, consult that link.

If you add a substantial amount of new content, such as a new chapter,
or a new section, please feel free to add yourself to the `\author`
field in `book/lysa.ltx` (you don't have to, if you don't want to). If
you suggested changes, or made a number of trivial changes, you can add
yourself to the `\editors` field.

### Graphs and Code

* For the time being, you can generate a graph with anything you want,
  as long as it's open-source. You just have to include the code to
  generate the graph (in case we want to change it). I recommend
  [Sage][sage].

* Code examples should be written with Sage, though.

[sage]: http://www.sagemath.org/

### Committing

Try to make sure that each commit only contains one change. It's a lot
less annoying to have to sift through 20 commits each with 1 different
change than 1 commit with 20 different changes. If the change is
difficult to summarize in one line, then you should probably split up
the commit with `git add -p`.

When in doubt, follow the
[Erlang OTP Git Commit Guide](https://github.com/erlang/otp/wiki/Writing-good-commit-messages).

## Sources

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

# LaTeX Style Guide

LaTeX is the markup language I use for LYSA. It's very good for
math. This document details the style choices you should make when
writing LaTeX.

1.  **Editor**

    You can use pretty much any text editor for LaTeX. Emacs is particularly
    good for LaTeX. Here is my `LaTeX-mode-hook`

    ```elisp
    (rainbow-mode 1)
    (rainbow-delimiters-mode 1)
    (flyspell-mode 1)
    (wc-mode 1)
    (hl-highlight-mode 1)

    (setq-local fill-column 80)
    (setq-local indent-tabs-mode nil)
    (setq-local tab-width 4)
    (setq-local tab-stop-list (number-sequence 4 80 4))
    (setq-local evil-shift-width 4)

    (define-key evil-insert-state-map (kbd "`") 'self-insert-command)
    (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)

    (setq-local LaTeX-item-indent -2)
    (setq-local LaTeX-indent-level 4)
    ```

2.  **Line length**
    
    Wrap lines to a reasonable limit, somewhere within 70-80 characters. I use 80,
    personally

3.  **Indentation**

    Indentation is 4 spaces, except in cases where other indentation
    makes more sense. Take, for example, bibliography entries:

    ```bibtex
    @book { lyah
          , author    = {Miran Lipova\v{c}a}
          , title     = {Learn You a Haskell for Great Good!}
          , publisher = {No Starch Press}
          , year      = {2011}
          , address   = {245 8th Street, San Francisco, CA, 94103}
          }

    @online { jobs-programming
            , title   = {steve jobs on programming}
            , url     = {https://www.youtube.com/watch?v=5Z1gfgM7kzo}
            , urldate = {2015-01-01}
            }
    ```

    Listing environments get 4-space indentation, but 2 for `\items`:

    ```latex
    \begin{enumerate}
      \item Stuff
        More stuff
    \end{enumerate}
    ```

    But other environments get normal indentation:

    ```latex
    \begin{alignedmath}
        p, q \in B \\
        p = q \\
        \evalat{\arc{f}}{p} \ne \evalat{\arc{f}}{q} \\
    \end{alignedmath}
    ```

    Put your macros in `lysa.ltx`.

    Display math should use either

    * the `equation` environment
    * one of the math environments in lysa.ltx

4.  **Exercises**

    Exercises should use either:

    a.  The `ExerciseList` environment:
    
        ```latex
        \begin{ExerciseList}
            \Exercise{What is the result of
                \begin{equation}
                    \mset{0,1} \times \mset{2,3}
                \end{equation}
            }

            \Answer{The result is the set of ordered pairs between the two sets, so:
                \begin{equation}
                    \begin{array}{rcl}
                        \mset{0,1} \times \mset{2,3} & = & \{\,   \mlist{0,2} \\
                                                     &   & \comma \mlist{0,3} \\
                                                     &   & \comma \mlist{1,2} \\
                                                     &   & \comma \mlist{1,3} \\
                                                     &   & \}                 \\
                    \end{array}
                \end{equation}
            }
        \end{ExerciseList}
        ```

    b.  The `ExcList` environment, which wraps an `ExerciseList` in a
        `\subsubsection`.

## File hierarchy

This is a non-exhaustive guide to the file hierarchy:

```
lysa/                               Repository
  en/                               English version of LYSA
    README.md                       This document
    OUTLINE.md                      The outline
    book/                           The actual book
      lysa.ltx                      The top node of the book.
      lysabuild                     The script to build the book
      chapters/                     The individual chapters
        X-something.ltx             Chapter X top node
        X/                          Chapter X sections
      appendices/                   The appendices
      bibliographies/               The bibliography
      graphs/                       Sage-generated graphs, along with the source code
        buildgraphs                 A program to build all of the graphs
        foo.sage                    Source file for a graph
        foo.sage.py                 Intermediate code generated by Sage (should be .gitignore'd)
        foo.png                     The graph itself
        foo-bar.png                 Maybe another variant of the graph
      images/                       Other images
      tex/                          Other TeX libraries imported
```
