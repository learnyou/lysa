### Nightly builds - http://dtscode.io/~lysa/develop/

# Learn You Some Algebras for Glorious Good! [![Build status](https://travis-ci.org/learnmath/lysa.svg)](https://travis-ci.org/learnmath/lysa)

This is a math book. We aim to take a logically rigorous, yet informal approach
to math. You can see the source for the book in the `book/` directory.

# Builds

The book is written in LaTeX. LaTeX is easy to edit, but isn't so fun to
read. For that reason, the book is compiled into PDF format, which is easy to
read, but not fun to edit. We don't have any official release of the book yet,
but we have a service which periodically builds the source, and publishes a
PDF. These PDF's are colloquially called "nightly builds."

* Nightly builds are available at http://dtscode.io/~lysa/develop/ .
* Releases will be available at http://dtscode.io/~lysa/master/ . As of 28
December 2014, there are no releases.

For more details on the build system, refer to the
[guide to contributing][contrib-build-sys].

To build
the project from source, you'll need most of the TeXLive packages.

For a list of dependencies, refer to our [guide to contributing on
software][contrib-software].

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

[contrib-build-sys]: contributing.md#build-system
[contrib-software]: contributing.md#software
[travis-yml]: .travis.yml


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

* Randy Brown (project leader)
  * Location: United States
  * GitHub: [beingbrown](https://github.com/beingbrown/)
  * IRC: beingbrown
  * Website: [http://www.beingbrown.net/](http://www.beingbrown.net/)
* Anton Golov (author)
  * Location: The Netherlands
  * Email: [jesyspa@gmail.com](mailto:jesyspa@gmail.com)
  * GitHub: [jesyspa](https://github.com/jesyspa/)
  * IRC: jesyspa
* Peter Harpending (author)
  * Location: United States
  * Email: [pharpend2@gmail.com](mailto:pharpend2@gmail.com)
  * GitHub: [pharpend](https://github.com/pharpend/)
  * IRC: pharpend
  * Website: [https://pharpend.github.io/](https://pharpend.github.io/)
* Ng Wei En (GitHub zen master)
  * Location: Singapore
  * Email: [wei2912.supp0rt@gmail.com](mailto:wei2912.supp0rt@gmail.com)
  * GitHub: [wei2912](https://github.com/wei2912/)
  * IRC: wei2912
  * Twitter: [@wei2912](https://twitter.com/wei2912)
  * Website: [https://wei2912.github.io/](https://wei2912.github.io/)
* Nick Chambers (site maintainer)
  * Location: United States
  * Email: [DTSCode@gmail.com](mailto:DTSCode@gmail.com)
  * GitHub: [DTScode](https://github.com/DTScode)
  * IRC: dts|pokeball, DTSCode

They are also operators on our IRC channel. You may contact them if you need
any help, but we encourage you to speak in the IRC channel rather than in PM.

[contrib-guide]: contributing.md
[webchat]: http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1


# License

LYSA is licensed under the [GNU Free Documentation License][gfdl]. The license
can be found in the LICENSE file in the project root.

[gfdl]: https://gnu.org/licenses/fdl.html
