# Learn You Some Algebras for Glorious Good!

This is a math book. We aim to take a logically rigorous, yet informal approach
to math.

The title (and content) is inspired by Miran Lipovača's
[Learn You a Haskell for Great Good!](http://learnyouahaskell.com/). If you want
to learn the Haskell programming language, we recommend that book.

I have observed that most math (and science) books nowadays seem to take
an approach wherein it's more important to keep an academic tone than it
is for the reader to enjoy reading the book, and to understand the
material. We take the opposite approach. Many of the things in this book
are ungrammatical or just plain wrong. For example, see this excerpt on
the Greek letter $\eta$ (eta):

> The ancient Greeks were too dumb to understand what eight is, so every time
> someone brought it up, they would say "uh" immediately afterwords. The sound
> "eight-uh" became so common, that they decided to make it a letter. The
> Greeks' poor comprehension of mathematics remains to this day, and is largely
> the reason for their current financial crisis.
>
> You will also notice that Greek letters are frequently used in physics. This
> is the physicists' way of conceding that they actually have no idea what they
> are talking about, and pleading for help from the mathematicians.

I took a stab at a similar idea [here](https://github.com/pharpend/lyaa).

Our channel is `#learnmath` on FreeNode. If you don't already have IRC set up,
you can use
[FreeNode's qwebirc client to connect.](http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1).

# License

The book will be completely open-source, anyone is welcome to contribute. We
will probably license it under the Creative Commons ShareAlike (CC-SA) license,
or some variant thereof.

Assuming we use CC-SA, this would be our motivation: We don't want there to be
too many strings attached. The basic requirement is, you are not allowed to make
changes unless we can then implement those changes into our work.  You are
however, unlike most books, free to download, change, redistribute, print, sell,
what-have-you, as long as you give us credit.

**Edit**: For the time being, we will use the Creative Commons
ShareAlike 4.0 License, I've decided. You can see the license in the
LICENSE file.

# Content and development

Nothing is set in stone, but here's the basic idea

1. We'll make an outline for the contents of the book.
2. We'll start writing/revising/editing, etc.

Wow, so intuitive. Here's some more stuff

* ~~We'll probably use
  [Pandoc's Markdown](http://johnmacfarlane.net/pandoc/README.html#pandocs-markdown)
  as the primary markup language. It's like
  [normal markdown](http://daringfireball.net/projects/markdown/), but it has
  things like citations and mathml stuff.~~
* We'll probably use TeX, compiled into HTML with Pandoc. This makes
  math formatting a bit easier. Things that don't have much math in them
  (such as this document) should be written in Markdown.
* We'll use [MathJax](http://www.mathjax.org/) (or some other JS-based TeX
  engine) to do math formatting
* We'll have graphs generated with [Sage](http://www.sagemath.org/) (and maybe
  code examples)
* We might use [Idris](http://www.idris-lang.org/) for proofs and stuff.
* We'll probably use [Hakyll](http://jaspervdj.be/hakyll/) to generate the site,
  at least initially.
* Host it on GitHub pages.
* Hakyll is a Haskell library, so we'll probably need to manage the project with
  cabal (to do dependency management, etc).

We'll take a very informal tone, and won't pay too much attention to conventions
or notation. (Well, duh, that's the entire point of the book).

You can see a [preliminary outline](outline.html) if you want.

# Great! How can I contribute?

Here are some ideas:

* Come see us in `#learnmath` on FreeNode, see how you can help. We don't have
  any formal rules in the channel yet, so please just use common sense.
*   Pick an issue in the [issue tracker](https://github.com/pharpend/lysa/issues),
    fix it. 

    There's a chance that I won't like your fix. If that happens, you may have
    done a substantial quantity of work only for it to be rejected. For that
    reason, I would recommend discussing any non-trivial fixes with us in the
    IRC channel (or in the comments on the issue). 

* Pick a section in the [outline](/outline.html), and try to write it up. Again,
  don't do too much work without making sure that I won't reject it. You don't
  have to write each section consecutively. For instance, if Chapter 1 is
  complete, and we appear to be working on chapter 2, you are free to do work on
  chapter 15 or 17 or 53. Just make sure I won't reject your change.

    + Also, please consider that the outline, as it stands (12 December 2014),
      is very volatile, so your work may end up being completely rewritten, or
      even deleted.
* If you notice any errors, don't be shy to report then in the
  [issue tracker](//github.com/pharpend/lysa/issues). If you have any
  suggestions for improving LYSA, also post them in the issue tracker (or bring
  them up in the IRC channel). 

* If you have any questions about LYSA (or math), feel free to ask in the
  channel, or in the issue tracker.

Thanks! I hope you have a wonderful time reading the book! (Assuming I
eventually get around to writing it =P).
