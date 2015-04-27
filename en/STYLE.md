# LaTeX Style Guide

LaTeX is the markup language we use for LYSA. It's very good for
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

    Indentation is 4 spaces, except in cases where other indentation makes more
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
    ```

    Listing environments get 4-space indentation, but -2 for `\items`:

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
