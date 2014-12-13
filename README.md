# Learn You Some Algebras for Glorious Good!

This is a math book. We aim to take a logically rigorous, yet informal approach
to math.

You can see the preliminary project page at https://learnmath.github.io/lysa/
. We haven't actually written any content yet, so don't get your hopes up. You
are welcome to add content, but please see the
[contributing guide](#great-how-can-i-contribute) first. 

If you like chatting on IRC, come see us in `#learnmath` on FreeNode. If you
don't know what IRC is, or you don't have a client set up, you can connect
through [FreeNode's webchat][webchat].

We hope you have a wonderful time reading the book! (Assuming we eventually get
around to writing it =P).

You can email me (pharpend) at `pharpend2@gmail.com`. I don't check that email
very often, so IRC is better. I'm `pharpend` in the channel.

If you notice any errors, don't be shy to report then in the
[issue tracker](//github.com/pharpend/lysa/issues). If you have any suggestions
for improving LYSA, also post them in the issue tracker (or bring them up in the
IRC channel).

If you have any questions about LYSA (or math), feel free to ask in the channel,
or in the issue tracker.

# License

LYSA is licensed under the
[Creative Commons Attribution-ShareAlike 4.0 International License][ccsa]. This
means many things, but here's the gist of it:

* You are free to read this book, redistribute it, change it, sell it,
what-have-you. There are a minimum of strings attached.

* The first string - you have to give us credit. You can't claim that you wrote
this book all on your own.

* The second thing - you are welcome to make changes, but, if you publish your
  changes, you must publish your changes under the same license. This ensures
  that we can then integrate your changes back into the main work.

If you want to know the details, read the [legal code][ccsa].

[ccsa]: http://creativecommons.org/licenses/by-sa/4.0/

# Great! How can I contribute?

There are a variety of ways you can contribute. Please read the remainder of
this document before you try, though. (Sorry, we all know how annoying this is,
but most of it is important!)

## Ideas for contributing

*   Pick an issue in the [issue tracker][issues], and fix it. 

    There's a chance that I won't like your fix. If that happens, you may have
    done a substantial quantity of work only for it to be rejected. For that
    reason, I would recommend discussing any non-trivial fixes with us in the
    IRC channel (or in the comments on the issue).

*   Pick a section in the [outline](/outline.html), and try to write it up. Again,
    don't do too much work without making sure that I won't reject it. You don't
    have to write each section consecutively. For instance, if Chapter 1 is
    complete, and we appear to be working on chapter 2, you are free to do work on
    chapter 15 or 17 or 53. Just make sure I won't reject your change.

    + Also, please consider that the outline, as it stands (12 December 2014),
      is very volatile, so your work may end up being completely rewritten, or
      even deleted.


[webchat]: http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1

## Git flow

We use
[gitflow][gitflow]for our branch model. The model isn't perfect, but it works
well enough, and most people are familiar with it.

![A graph illustrating gitflow](http://nvie.com/img/git-model@2x.png)

We don't use the standard branch prefixes. With that in mind, please add this to
the `.git/config` file in the repository.

```conf
[gitflow "branch"]
	master = master
	develop = develop
[gitflow "prefix"]
	feature = f/pharpend/
	release = r/
	hotfix = h/pharpend/
	support = s/
	versiontag = 
```

Replace `pharpend` with your GitHub username (or IRC nick, or something unique
to you), so we don't have namespace conflicts on feature branches. Also, don't
run `git flow init`, as it will override those settings. Just add those settings
to your `.git/config` (or replace them), and it should work out of the
box. (Provided you have gitflow installed).

The [central repository][centrepo] is merge-only. Every developer should
maintain their own fork of the repo, and then submit a pull request when they
want their changes to be merged. Note that the central repository does not have
feature branches. Your pull request should target the `develop` branch.

[centrepo]: https://github.com/learnmath/lysa

## Markup rules

* Documents such as this one, which will only appear on GitHub, should be
  written in [GitHub-flavored markdown][gfm].

* Documents which appear on the site, but don't have much math, should be
written in [Pandoc's Markdown][pdmd]. Pandoc's Markdown is similar to
[normal markdown][md], but has support for things like footnotes, citations, and
math.

* Documents which contain a lot of math (such as the contents of the book),
should be written in LaTeX. This isn't set-in-stone yet, but it's a lot easier
to embed LaTeX when the text editor you are using knows that you are writing
LaTeX.

*   Non-trivial markdown documents should not use inline links, because then
    it's annoying to use the links elsewhere in the document. For instance, this
    is appropriate:

    ```markdown
    * We might use [Idris][idris] as an interactive proof assistant. The other
      candidates are [Coq][coq] and [Agda][agda].

    <!-- Later on ... -->

    [agda]: http://wiki.portal.chalmers.se/agda/pmwiki.php
    [coq]: https://coq.inria.fr/
    [idris]: http://www.idris-lang.org/
    ```

[gfm]: https://help.github.com/articles/github-flavored-markdown/
[gitflow]: http://nvie.com/posts/a-successful-git-branching-model/
[issues]: https://github.com/learnmath/lysa/issues
[latex]: https://en.wikibooks.org/wiki/LaTeX/Mathematics
[lysa_home]: https://learnmath.github.io/lysa/
[md]: http://daringfireball.net/projects/markdown/
[outline]: https://learnmath.github.io/lysa/outline.html
[pdmd]: http://johnmacfarlane.net/pandoc/README.html#pandocs-markdown

## Programming

* For the time being, you can generate a graph with anything you want, as long
  as it's open-source. You just have to include the code to generate the graph
  (in case we want to change it). I recommend [Sage][sage].

* We might use [Idris][idris] as an interactive proof assistant. The other
  candidates are [Coq][coq] and [Agda][agda].

[agda]: http://wiki.portal.chalmers.se/agda/pmwiki.php
[coq]: https://coq.inria.fr/
[idris]: http://www.idris-lang.org/
[sage]: http://www.sagemath.org/

## Building the site

The site is generated with a Haskell script, located at `site/main.hs`. The
Haskell script requires that you have the various Haskell components installed,
as well as the Hakyll library. If you already have a working Haskell setup, you
can run this command to install Hakyll.

    cabal install hakyll

If you don't have a working Haskell installation, skip to the next section, then
come back.

You can run the script with 

    runhaskell main.hs help 

(make sure you are working in the `site/` directory, or the script won't work
properly). That will show you all of the available options. Strictly speaking,
you could compile it with GHC, then run the resulting binary. However, the
performance gain will be minimal, and GHC will dump a bunch of useless files
into the directory.

Note that the Haskell script uses the Hakyll library, which is licensed under
the GPL (the software analog of the CC-SA license). Therefore, the Haskell
script is licensed under the GPL. You can see the GPL in the `site/COPYING`
file.

Clean-building the site (with `runhaskell main.hs clean; runhaskell main.hs
build`) will output the static site in the `site/_site` directory.

### If you don't have a working Haskell installation.

If you use Linux/BSD/`some_other_unix`, your distribution probably has the
Haskell components available in its repositories. The packages would be
something like `ghc`, `cabal-install`, `alex`, and `happy` (you need all of
those). `haskell-platform` would also work. (The Haskell platform is just those
four packages).

#### Windows, OS X, or Slackware

If that last paragraph doesn't apply to you, see [bitemyapp's guide][learnhs]
for instructions.

[learnhs]: https://github.com/bitemyapp/learnhaskell
