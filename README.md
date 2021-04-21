# MS_Office_SVN


## What is it

MS_Office_SVN is a set of add-ins for Microsoft Office Excel, Word and PowerPoint that assists for document version control through Subversion (SVN).\
Thanks to the MS_Office_SVN package, you can now easily version-control your MS Office files right from the MS Office menu!

![Word 2007 ribbon menu](https://github.com/msofficesvn/msofficesvn/raw/master/2007orlater/msofficesvn_common/doc/en/wd2007menu.jpg)
![Excel 2007 ribbon menu](https://github.com/msofficesvn/msofficesvn/raw/master/2007orlater/msofficesvn_common/doc/en/xl2007menu.jpg)

Main features:
* Invoke the most frequently used version control commands directly from Microsoft Office: Update, Lock, Commit, Diff, Log, and others
* Allow shortcut keys to trigger SVN commands
* Notify the user if the `svn:needs-lock` property is in use (i.e. trying to edit a read-only file)


## How to use

1. MS_Office_SVN is based on [TortoiseSVN](https://tortoisesvn.net/), that's why **you need to have previously installed [TortoiseSVN](https://tortoisesvn.net/)** for MS_Office_SVN to work!
2. MS_Office_SVN comes as a package of multiple add-ins. Follow the instructions to install the add-in(s) of your choice:  
  a. [English Instruction](https://github.com/msofficesvn/msofficesvn/wiki/Install)  
  b. [Japanese Instruction](https://github.com/msofficesvn/msofficesvn/wiki/Install_ja)

More detailed information:\
[English documentation](https://github.com/msofficesvn/msofficesvn/wiki)\
[Japanese documentation](https://github.com/msofficesvn/msofficesvn/wiki/Introduction_ja)


## Compatibility

Because TortoiseSVN is a Windows-only software, so does MS_Office_SVN.\
In other words, MS_Office_SVN is **not** compatible with Mac OS versions of Microsoft Office.

The [latest release 1.4.0](https://github.com/msofficesvn/msofficesvn/releases/tag/rel-1.4.0) is compatible:
* Up to Microsoft Office 2019 (at least)
* With 64bit versions of MS Office
* Up to TortoiseSVN 1.14.1 (at least)
* With Windows 10

Since [release 1.3.0](https://github.com/msofficesvn/msofficesvn/releases/tag/rel-1.3.0), MS_Office_SVN supports TortoiseSVN 1.7 (or later).

Legacy: Support Office97sr2\
_TBD: check this assumption or remove it_


## How to contribute

If you want to add your contribution to our project feel free to fork the repository, commit your changes and submit a pull-request.\
You are encouraged to read the [GitHub fork guide](https://guides.github.com/activities/forking/).


## Credits
Koki Yamamoto (kokiya@gmail.com)
