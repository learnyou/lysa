[**Nightly builds**](http://dtscode.io/lysa/)

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

# Roles

The following people are the main contributors to LYSA:

* Randy Brown -- project leader
  * GitHub: [beingbrown](https://github.com/beingbrown/)
  * IRC: beingbrown
  * Website: [http://www.beingbrown.net/](http://www.beingbrown.net/)
* Anton Golov -- author
  * Email: [jesyspa@gmail.com](mailto:jesyspa@gmail.com)
  * GitHub: [jesyspa](https://github.com/jesyspa/)
  * IRC: jesyspa
* Peter Harpending -- author
  * Email: [pharpend2@gmail.com](mailto:pharpend2@gmail.com)
  * GitHub: [pharpend](https://github.com/pharpend/)
  * IRC: pharpend
  * Website: [https://pharpend.github.io/](https://pharpend.github.io/)
* Ng Wei En -- build system manager & quality control
  * Email: [wei2912.supp0rt@gmail.com](mailto:wei2912.supp0rt@gmail.com)
  * GitHub: [wei2912](https://github.com/wei2912/)
  * IRC: wei2912
  * Twitter: [@wei2912](https://twitter.com/wei2912)
  * Website: [https://wei2912.github.io/](https://wei2912.github.io/)
* Nick Chambers -- site maintainer
  * Email: [DTSCode@gmail.com](mailto:DTSCode@gmail.com)
  * GitHub: [DTScode](https://github.com/DTScode)
  * IRC: dts|pokeball

They are also operators on our IRC channel. You may contact them if you need any help, but we encourage you to speak in the IRC channel rather than in PM.

# License

LYSA is licensed under the [GNU Free Documentation License][gfdl]. This means
many things, but here's the gist of it:

* You are free to read this book, redistribute it, change it, sell it,
what-have-you. There are a minimum of strings attached.

* The first string - you have to give us credit. You can't claim that you wrote
this book all on your own.

* The second thing - you are welcome to make changes, but, if you publish your
  changes, you must publish your changes under the same license. This ensures
  that we can then integrate your changes back into the main work. Moreover, if
  you *print* your changes in any substantial quantity, you must publish the
  source.

The license can be found in the LICENSE file in the project root.

[gfdl]: https://gnu.org/licenses/fdl.html
[contrib-guide]: contributing.md
[webchat]: http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1
