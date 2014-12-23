# Learn You Some Algebras for Glorious Good! [![Build status](https://travis-ci.org/learnmath/lysa.svg)](https://travis-ci.org/learnmath/lysa)

This is a math book. We aim to take a logically rigorous, yet informal approach
to math. You can see the source for the book in the `book/` directory. To build
the project from source, you'll need most of the TeXLive packages (sorry, I
don't have a list yet).

```
git clone https://github.com/learnmath/lysa.git -b develop
cd lysa/book
./build
```

The build script is not dangerous, you can look at it if you want. It builds the
book, and generates it into a file called `lysa.pdf` in the `book/`
directory. If you have a slow computer, it might take about 30 seconds or so to
build. On a fast computer, it will take less than a second. We don't include the
PDF file in the git tree because it's a binary file, and thus causes merge
conflicts if we try to track it.

# Contributing

You are welcome to add content, but please see the
[contributing guide][contrib-guide] first.

If you like chatting on IRC, come see us in `#learnmath` on FreeNode. If you
don't know what IRC is, or you don't have a client set up, you can connect
through [FreeNode's webchat][webchat].


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
[contrib-guide]: contributing.md
[webchat]: http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1
