Copyright © 2014-2015, Peter Harpending. <pharpend2@gmail.com>

Copying and distribution of this file, with or without modification, are
permitted in any medium without royalty provided the copyright notice and this
notice are preserved.  This file is offered as-is, without any warranty.

# LaTeX Style Guide

LaTeX is the markup language we use for LYSA. It's very good for math. This
document details the style choices you should make when writing LaTeX.

**Editor**

You can use pretty much any text editor for LaTeX. Emacs is particularly good
for LaTeX. Here is my `LaTeX-mode-hook`

```elisp
(smartparens-mode 1)
(autopair-mode -1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(flyspell-mode 1)
(LaTeX-math-mode 1)
(auto-fill-mode -1)
(wc-mode 1)

(setq-local fill-column 80)
(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(define-key evil-insert-state-map (kbd "`") 'self-insert-command)
(local-set-key (kbd "C-c C-c") 'compile)
(local-set-key (kbd "RET") 'reindent-then-newline-and-indent)
```

**Line length**

Wrap lines to a reasonable limit, somewhere within 70-80 characters. 

**Indentation**

Indentation is 2 spaces, except in cases where other alignment makes more
sense. Take, for example, bibliography entries:

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

@online { w-functions
        , title   = {Function (mathematics)}
        , url     = {https://en.wikipedia.org/wiki/Function_%28mathematics%29}
        , urldate = {2015-01-10}
        }


@book { landau-analysis
      , author    = {Edmund Landau}
      , title     = {Foundations of Analysis}
      , publisher = {AMS Chelsea Publishing}
      , year      = {1966}
      , address   = {Providence, RI}
      }
```

Listing environments do not deserve indentation:

```latex
\begin{enumerate}
\item $\subof$
\item $\subeq$
\item $\supof$
\item $\supeq$
\item $\notsubof$
\item $\notsubeq$
\item $\notsupof$
\item $\notsupeq$
\end{enumerate}
```

But other environments do:

```latex
\begin{alignedmath}
  p, q \in B \\
  p = q \\
  \evalat{\arc{f}}{p} \ne \evalat{\arc{f}}{q} \\
\end{alignedmath}
```

**Math**

I use sort of weird notation for function application:

```latex
\begin{displaymath}
  \evalat{\arc{f}}{p} \ne \evalat{\arc{f}}{q}
\end{displaymath}
```

The math expands to

```latex
^{\mathrm{arc}}\left[\,f\,\right]_{\left[\,p\,\right]} \ne ^{\mathrm{arc}}\left[\,f\,\right]_{\left[\,q\,\right]}
```

That's obviously a bit of a pain to type out. The moral of the story is, use
macros everywhere. It makes everything a lot easier.

Little macros that you use in a paragraph or two can just be put before their
use:

```latex
\newcommand{\gfun}{\ld{x,y} \parens{x+5} \times \parens{y-2}}
\newcommand{\gfunevald}{\ld{x=4, y=6} \parens{x+5} \times \parens{y-2}}
\begin{displaymath}
  \begin{array}{rcl}
    \evalmultat{g}{x = 4, y = 6} & = & \gfunevald \\
                     & = & \parens{4 + 5} \times \parens{6 - 2} \\
                     & = & 9 \times 4 \\
                     & = & 36 \\
  \end{array}
\end{displaymath}
```

If they are really widely used, you should put them in `lysa.ltx`. Currently, we
have a list of about 170 math macros:

```latex
% Math shortcuts
\newcommand{\suc}{\mathrm{suc}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\renewcommand{\emptyset}{\varnothing}
% \newcommand{\nil}{\varnothing}
\newcommand{\nil}{\emptyset}
\newcommand{\subof}{\subset}
\newcommand{\subeq}{\subseteq}
\newcommand{\subofnm}{$\subset$}
\newcommand{\subeqnm}{$\subseteq$}
\newcommand{\supof}{\supset}
\newcommand{\supeq}{\supseteq}
\newcommand{\supofnm}{$\supset$}
\newcommand{\supeqnm}{$\supseteq$}
\newcommand{\mset}[1]{\left\{\,#1\,\right\}}
\newcommand{\parens}[1]{\left(\,#1\,\right)}
\newcommand{\brackets}[1]{\left[\,#1\,\right]}
\newcommand{\Qimplies}{\stackrel{?}{\implies}}
\newcommand{\Qimpliedby}{\stackrel{?}{\impliedby}}
\newcommand{\comma}{,\,}
\newcommand{\notimplies}{\centernot\implies}
\newcommand{\notimpliedby}{\centernot\impliedby}
\newcommand{\notiff}{\centernot\iff}
\newcommand{\Qin}{\stackrel{?}{\in}}
\newcommand{\Qiff}{\stackrel{?}{\iff}}
\newcommand{\truenm}{$\true$}
\newcommand{\falsenm}{$\false$}
\newcommand{\true}{\mathrm{True}}
\newcommand{\false}{\mathrm{False}}
\newcommand{\bigand}[1]{\land\brackets{#1}}
\newcommand{\semicolon}{;\;}
\newcommand{\mlist}[1]{\left(\,#1\,\right)}
\newcommand{\sfall}{\semicolon\forall}
\newcommand{\ld}[1]{\lambda\mlist{#1} \to}
\newcommand{\domain}[1]{^{\mathrm{dom}}\brackets{#1}}
\let\dom\domain
\newcommand{\codomain}[1]{^{\mathrm{codom}}\brackets{#1}}
\let\codom\codomain
\newcommand{\bool}{\mathbb{B}}
\newcommand{\boolnm}{$\mathrm{\bool}$}
\newcommand{\bracketset}[1]{\brackets{ #1 }}
\newcommand{\evalat}[2]{#1 _{\,\bracketset{#2}}}
\newenvironment{alignmath}[1]
  {\begin{displaymath}\begin{array}{#1}}
  {\end{array}\end{displaymath}}
\newenvironment{alignedmath}
  {\begin{alignmath}{l}}
  {\end{alignmath}}
\newcommand{\lto}{\lambda\to}
\newcommand{\arc}[1]  {{^{\mathrm{arc}}\brackets{#1}}}
\newcommand{\im}[1]   {{^{\mathrm{im}}\brackets{#1}}}
\newcommand{\preim}[1]{{^{\mathrm{preim}}\brackets{#1}}}
\newcommand{\Set}{\mathbf{Set}}
\newcommand{\Qsubof}{\stackrel{?}{\subof}}
\newcommand{\Qsubeq}{\stackrel{?}{\subeq}}
\newcommand{\Qsupof}{\stackrel{?}{\supof}}
\newcommand{\Qsupeq}{\stackrel{?}{\supeq}}
\newcommand{\notsubof}{\centernot{\subof}}
\newcommand{\notsubeq}{\centernot{\subeq}}
\newcommand{\notsupof}{\centernot{\supof}}
\newcommand{\notsupeq}{\centernot{\supeq}}
\newcommand{\superbracket}[2]{
  {
    ^{
      {#1}
    }
    \brackets{
      {#2}
    }
  }
}
```

Macros are encouraged.

Display math should use either 
* the `displaymath` environment
* `\[ ... \]`
* one of the math environments in lysa.ltx

Basically, don't use `$$ ... $$`, it annoys me.

**File naming**

You can probably pick this up by context. If not:

(it is now assumed everything is relative to the `book/`) directory.

*   No actual content goes in lysa.ltx. It's just a thing that imports stuff.
*   Let `N` be the chapter number. `chapters/N-description.ltx` will have a brief
    introduction to the chapter, and then use `\input{...}` to get the sections.

    ```latex
    \ch{Sets, Proofs, and Functions}

    Alright, we're done with Booleans! Sort of. The next thing we are going to look
    at are \xti{sets}.

    Sets were first studied by Georg Cantor, a German mathematician, in the second
    half of the nineteenth century.  Back in his own day, the results Cantor found
    by studying sets were considered so thoroughly bizarre that many of his
    colleagues simply refused to believe that Cantor could be right.  In the end,
    Cantor turned out to be right all along. His ideas can be found in any
    introductory text on mathematics---including this one.

    Sets are basically like lists--- think ``your grocery list'' or ``your
    to-do-list'' --- except there's no multiplicity, and there's no intrinsic
    order. A ``list'' is exactly what you think it is. It's a bunch of things. The
    standard notation is to use $\mset{\mathrm{Braces}}$ for sets, and
    $\mlist{\mathrm{Parentheses}}$ for lists. Lists can have duplication, and order
    does matter.

    $\mlist{4}$, $\mlist{4,4}$, and $\mlist{4,4,4}$ are all different \xtb{lists};
    $\mset{4}$, $\mset{4,4}$, and $\mset{4,4,4}$ are the same \xtb{set}. In a
    \xtb{list}, each $4$ is considered a separate item. In a \xtb{set}, $4$ can
    appear a billion times, but it's only counted once.

    $\mlist{1,2,3}$, $\mlist{3,1,2}$, and $\mlist{2,3,1}$ are all different
    \xtb{lists}. $\mset{1,2,3}$, $\mset{3,1,2}$, and $\mset{2,3,1}$ are all the same
    \xtb{set}. In a \xtb{set}, the order in which items appear doesn't matter; all
    that matters is that the items are there. In a \xtb{list}, however, the order is
    important.

    In a list, order and multiplicity matter. In a set, order and multiplicity are
    ignored. If you can't remember whether to use braces \{the curly things\}, or
    parentheses (the round things), remember: \xti{a \xtb{brace} is used to
      \xtb{set} a broken bone.} I don't have a horrible pun having to do with
    parentheses and lists, and for that, I apologize.

    \input{3/1-elements-subsets.ltx}
    \input{3/2-operators-functions.ltx}
    \input{3/3-unions-intersections.ltx}
    \input{3/4-natural-numbers.ltx}
    ```

*   Let `N` be the chapter, and `M` be the
    section. `chapters/N/M-description.ltx` has the contents of section `N.M`.

**Exercises**

Exercises should use the `ExcList` environment:

```latex
\begin{ExcList}
  \Exercise{What is the result of
    \[ \mset{0,1} \times \mset{2,3} \]
  }
  \Answer{The result is the set of ordered pairs between the two sets, so:

    \begin{displaymath}
      \begin{array}{rcl}
        \mset{0,1} \times \mset{2,3} & = & \{\,   \mlist{0,2} \\
                                     &   & \comma \mlist{0,3} \\
                                     &   & \comma \mlist{1,2} \\
                                     &   & \comma \mlist{1,3} \\
                                     &   & \}                 \\
      \end{array}
    \end{displaymath}
  }

  \Exercise{Write a bijective function $f$ for the Cartesian product above. That
    is, write a function $f$ such that

    \begin{alignedmath}
      \mset{\mlist{x, \evalat{f}{x}} \mid \parens{x \in \mset{0,1}} \land \parens{\evalat{f}{x} \in \mset{2,3}}}\\
      \parens{x = y} \iff \parens{\evalat{f}{x} = \evalat{f}{y} } \\
    \end{alignedmath}
  }
  \Answer{$f = \parens{+2}$}

  \Exercise{Given the $f$ above, what is $\arc{f}$?}
  \Answer{$\arc{f} = \parens{-2}$}

  

  \Exercise{Show that a function is invertible iff it is bijective.}

  \Answer{ A function is \xtb{in}jective if its preimage equals its domain. It
    is \xtb{sur}jective if its image equals its codomain.  This means that if
    $f$ is bijective, then $\arc{f}$ is also bijective.

    This means that if a function is bijective, then it obviously has an
    inverse. (We've just shown that the inverse is bijective in this case, and
    that is predicated on the inverse existing.)

    Let's assume that a function is not surjective. Then there is no inverse,
    because $B$ is larger than $\dom{\arc{f}}$.

    Let's assume that a function is not injective. Then there is no inverse,
    because there would then be two elements of $B$ such that
    
    \begin{alignedmath}
      p, q \in B \\
      p = q \\
      \evalat{\arc{f}}{p} \ne \evalat{\arc{f}}{q} \\
    \end{alignedmath}

    Which would mean that the inverse is not a function, and therefore doesn't
    exist.

    Thus if a function has an inverse, then it must be bijective.

    Q.E.D.
  }

  \Exercise{What are the signatures for each of the following?
    \begin{enumerate}
    \item $\subof$
    \item $\subeq$
    \item $\supof$
    \item $\supeq$
    \item $\notsubof$
    \item $\notsubeq$
    \item $\notsupof$
    \item $\notsupeq$
    \end{enumerate}

    (hint: they all have the same signature)
  }
  \Answer{$\Set \to \Set \to \bool$}

  \Exercise{What is the signature for $\in$?}

  \Answer{Let $a$ be any type of thing, like a number, or a boolean, or a
    set. Let $\superbracket{\Set}{a}$ be the set of sets where the elements are
    of type $a$.

    \[\in \null : a \to \superbracket{\Set}{a} \to \bool \]

    (remember, $\bool$ is the set of booleans.)
  }

\end{ExcList}
```

That's it for now. More to come soon.
