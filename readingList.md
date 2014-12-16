# Reading List for LYSA Contributors

This is somewhat of an informal reading list for anyone interested in
contributing to LYSA. These do have an order, but it's not super important to
follow it. Please do take a look at each of the links, though.

The reading list is split into subsections for readability.

## Haskell platform

This portion describes installing the components of the Haskell platform, which
is needed to run the [build script][main.hs].

0.  [Haskell Platform installation guide][bitemyapp] - This is a guide to
    installing the Haskell platform, which you need to run the
    [build script][main.hs]. You can ignore the parts about setting up your
    editors or learning the language. The installation is all you should care
    about.
1.  [Learn You a Haskell for Great Good!][lyah] - This is the inspiration for
    our book. Again, you don't have to read the whole thing.

[bitemyapp]: https://github.com/bitemyapp/learnhaskell
[lyah]: http://learnyouahaskell.com/
[main.hs]: site/main.hs

## Git and GitHub

[Git][gitscm] is a revision control system. It's more or less exactly what it
sounds like. It helps us keep track of changes made to the book. Moreover, it
helps us deal with the changes abstractly, which is a huge boost to
productivity. This section gives resources for installing and learning how to
use Git.

2.  [Pro Git][progit] - This is a book by Scott Chacon about [Git][gitscm], the
    version control system we use for the book. **It is important that you read
    the entire book.** You may do this concurrently with the rest of the stuff
    here, but please read the entire book before contributing.
3.  [Gitflow branching model][gitflow] - this is roughly the branching model we
    use.
4.  [GitHub fork & pull workflow][forkpull] - this is roughly the workflow we
    recommend to contributors. You don't have to follow it, but it's the easiest
    method.

[progit]: http://git-scm.com/book/en/v2
[gitscm]: http://git-scm.com/
[forkpull]: https://help.github.com/articles/fork-a-repo/
[gitflow]: https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow/

## Markdown

Markdown is a simple syntax for HTML documents with a minimum of
formatting. This document is written in Markdown.

5.  [Vanilla Markdown][md] - This is the original version of markdown, which is
    now deprecated. We don't use this, but the link provides a good guide to the
    syntax.
6.  [GitHub-flavoured Markdown][gfm] - This guide is for GitHub-flavoured
    markdown, which is a slight extension to the original Markdown
    syntax. GitHub, the site we use to host this project, has their own flavor
    of markdown which is used to render documentation files, such as this file.

[md]: http://daringfireball.net/projects/markdown/
[gfm]: https://help.github.com/articles/github-flavored-markdown/

## LaTeX

LaTex is LaTeX is the de-facto markup language for mathematics. Through a
complicated scheme involving the [build script][main.hs], we use it to generate
(most of) the book's content.

7.  [Wikibooks Guide to LaTeX][wblatex] - If you don't already know LaTeX, this
    is a good book. **Please read the entire book.**

## Emacs

Emacs is an incredibly powerful and extensible text editor. You do not need to
use Emacs to contribute to LYSA, but I recommend it. Emacs itself is pretty
terrible. However, its extensibility allows people to write add-on packages
which greatly enhance the functionality. These add-on packages allow you to have
a very streamlined and 

### If you have never used plain-text markup

If you are used to editing your documents in Microsoft Word, or a similar
program, plain-text markup may throw you a bit off-guard. That is, plain-text
formatting works simply with text describing what the formatting should look
like. The compiler/interpreter then figures out how to render the plain-text
markup on your screen.

In the guts, word processing programs actually use plain-text markup. However,
you usually edit them visually - using a "What you see is what you get"
interface. 

This method is great for simple formatting, but it introduces a lot of tedium
when doing anything beyond basic markup. Plain-text methods are usually
easier. Furthermore, these document formats are not easy to convert to
plain-text formatting. (Whereas it's very easy to convert plain-text formatting
to a word processing document).

Instead of a word processor, such as Microsoft Word or LibreOffice, plain-text
formats can be edited with any plain-text editor. The most popular plain-text
editor, and the one I recommend, is called [Emacs][emacs]. Emacs has an
incredibly steep learning curve. If you are new to plain-text editing, I
recommend [Vim][vim] instead.

4.  [Installing Emacs][emacsInstall] - 
[emacsinstall]: https://www.gnu.org/software/emacs/manual/html_node/efaq/Installing-Emacs.html
[wblatex]: https://en.wikibooks.org/wiki/LaTeX

* Emacs
* Magit
* Auctex
* Pandoc
* Hakyll
* MathJax
