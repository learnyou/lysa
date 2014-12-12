# Learn You Some Algebras for Glorious Good!

This is a math book. We aim to take a logically rigorous, yet informal approach
to math.

The title (and content) is inspired by Miran Lipovača's
[Learn You a Haskell for Great Good!](http://learnyouahaskell.com/). If you want
to learn the Haskell programming language, we recommend that book.

We have the opinion that most math (or maths, if you are a dirty Brit =P) books
nowadays seem to take an approach wherein it's more important to keep an
academic tone than it is for the reader to enjoy reading the book, and to
understand the material. We take the opposite approach. Many of the things in
this book are ungrammatical or just plain wrong. For example, see this excerpt
on the Greek letter η (eta):

> The ancient Greeks were too dumb to understand what eight is, so every time
> someone brought it up, they would say ``uh'' immediately afterwords. The sound
> ``eight-uh'' became so common, that they decided to make it a letter. The
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

# Content and development

Nothing is set in stone, but here's the basic idea

1. We'll make an outline for the contents of the book.
2. We'll start writing/revising/editing, etc.

Wow, so intuitive. Here's some more stuff

* We'll probably use
  [Pandoc's Markdown](http://johnmacfarlane.net/pandoc/README.html#pandocs-markdown)
  as the primary markup language. It's like
  [normal markdown](http://daringfireball.net/projects/markdown/), but it has
  things like citations and mathml stuff.
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
