Copyright © 2014-2015 Peter Harpending. `<peter@harpending.org>`

Copying and distribution of this file, with or without modification, are
permitted in any medium without royalty provided the copyright notice and this
notice are preserved.  This file is offered as-is, without any warranty.

# Learn You Some Algebras for Glorious Good!

This is a math book, licensed under the GNU FDL. It is written in English. There
is an unofficial [Russian translation](https://github.com/gazay/lysa)

# Building

If you want a pre-build PDF, see the
[pdfs repository](https://github.com/learnyou/pdfs).

To build a PDF from source, you'll need to have TeX installed, along with a
number of packages. A list can be found in the
[`docs/contributing.md` file](docs/contributing.md). I'm sure you can build the
project on Windows, I just don't know how (most of us use Linux). 

```
git clone https://gitlab.com/lysa/lysa.git
cd lysa
./lysabuild LANG
```

Where `LANG` is one of the supported languages. Run `lysabuild help` for a list.

If you don't use git, you can get a tarball from
<https://gitlab.com/lysa/lysa/repository/archive.tar.gz>. If you don't know what
a tarball is, you can get a Zip archive from
<https://gitlab.com/lysa/lysa/repository/archive.zip>.

If you have a slow computer, it might take about 30 seconds or so to build. On a
fast computer, it will take less than a second.

# Community stuff

If you like chatting on IRC, come see us in `#lysa` on FreeNode. If you don't
know what IRC is, or you don't have a client set up, you can connect through
[FreeNode's webchat][webchat].

If you notice any errors, don't be shy to report them in the
[issue tracker](https://github.com/learnyou/lysa/issues). If you have any
suggestions for improving LYSA, also post them in the issue tracker (or bring
them up in the IRC channel).

If you have any questions about LYSA (or math), feel free to ask in the channel,
or in the issue tracker.

[webchat]: http://webchat.freenode.net/?channels=lysa

# License

LYSA is licensed under the [GNU Free Documentation License][gfdl]. The license
can be found in the LICENSE file in the project root.

[gfdl]: https://gnu.org/licenses/fdl.html
