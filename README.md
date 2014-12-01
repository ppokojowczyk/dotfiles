dotfiles
========

Set of my linux dotfiles & scripts. Nothing fancy, but sometimes it is
a time & life saver.

Basically, <b>.bashrc</b> doesn't do nothing special than executing <b>load</b>
file, which in turn loads everything from <b>include</b> directory.

Put your private stuff in <b>~/.bash_extra</b> file and <b>~/.bin</b> directory.

Installation
------------

There are two options:

### Method 1

Add this piece of code to your ~/.bashrc file...

```
DOTFILES="$HOME/.dotfiles/"
. $DOTFILES/load
```

...and optionally copy/symlink <b>vim</b>, <b>tmux.conf</b> and other stuff.

### Method 2

Just run install.sh.

