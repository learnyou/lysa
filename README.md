# Learn You Some Algebras for Glorious Good!

This is a math book, licensed under the GNU FDL.

To build the project from source, you'll need to have TeX installed, along with
a number of packages. A list can be found in the `contributing.md` file in the
project root. I'm sure you can build the project on Windows, I just don't know
how (most of us use Linux).

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

If you like chatting on IRC, come see us in `#lysa` on FreeNode. If you don't
know what IRC is, or you don't have a client set up, you can connect through
[FreeNode's webchat][webchat].

If you notice any errors, don't be shy to report them in the
[issue tracker](//github.com/pharpend/lysa/issues). If you have any suggestions
for improving LYSA, also post them in the issue tracker (or bring them up in the
IRC channel).

If you have any questions about LYSA (or math), feel free to ask in the channel,
or in the issue tracker.

[webchat]: http://webchat.freenode.net/?channels=lysa


# License

LYSA is licensed under the [GNU Free Documentation License][gfdl]. The license
can be found in the LICENSE file in the project root.

[gfdl]: https://gnu.org/licenses/fdl.html
