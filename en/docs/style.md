# LaTeX Style Guide

LaTeX is the markup language we use for LYSA. It's very good for
math. This document details the style choices you should make when
writing LaTeX.

**Editor**

You can use pretty much any text editor for LaTeX. Emacs is particularly
good for LaTeX. Here is my `LaTeX-mode-hook`

```elisp
(smartparens-mode 1)
(autopair-mode -1)
(rainbow-mode 1)
(rainbow-delimiters-mode 1)
(flyspell-mode 1)
(LaTeX-math-mode 1)
(auto-fill-mode -1)
(wc-mode 1)

(setq-local fill-column 72)
(setq-local indent-tabs-mode nil)
(setq-local tab-width 2)
(setq-local tab-stop-list (number-sequence 2 200 2))
(setq-local evil-shift-width 2)

(define-key evil-insert-state-map (kbd "`") 'self-insert-command)
(local-set-key (kbd "C-c C-c") 'compile)
(local-set-key (kbd "RET") 'reindent-then-newline-and-indent)
```

**Line length**

Wrap lines to a reasonable limit, somewhere within 70-80 characters. I
use 72, personally

**Indentation**

Indentation is 2 spaces, except in cases where other alignment makes
more sense. Take, for example, bibliography entries:

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

That's obviously a bit of a pain to type out. The moral of the story is,
use macros everywhere. It makes everything a lot easier.

Put your macros in `lysa.ltx`.

Display math should use either

* the `displaymath` environment
* `\[ ... \]`
* one of the math environments in lysa.ltx

Basically, don't use `$$ ... $$`, it annoys me.

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
\end{ExcList}
```
