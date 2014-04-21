# My dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These were holman's, now they're mine. The shell part of my dotfiles are based on [Antigen](https://github.com/zsh-users/antigen) and [Oh-My-Zsh](https://github.com/tbjers/oh-my-zsh) with a few plugins and modified themes that are part of my [zsh-plugins](https://github.com/tbjers/zsh-plugins) repository.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read his post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Installation

Run this:

```sh
$ git clone https://github.com/tbjers/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ script/install && script/bootstrap
```

This will install the appropriate prerequisites such as homebrew, Antigen, and various other needed packages. Then bootstrap will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`, which sets up a few paths that'll be different on your particular machine. It also includes my preferred [oh-my-zsh](https://github.com/tbjers/oh-my-zsh) modules that are managed by [antigen](https://github.com/zsh-users/antigen).

`dot` is a simple script that installs some dependencies, sets sane OS X defaults, and so on. Tweak this script, and occasionally run `dot` from time to time to keep your environment fresh and up-to-date. You can find this script in `bin/`.

## Topical

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. Anything with an extension of `.symlink` will get symlinked without extension into `$HOME` with a dot prepended when you run `script/bootstrap`.

## What's inside

 - Antigen
 - Oh-My-Zsh
 - Tmux
 - iTerm2 settings

Check them out in the file browser above and see what components may mesh up with you. [Fork it](https://github.com/tbjers/dotfiles/fork), remove what you don't use, and build on what you do use.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **topic/install.sh**: These files will be run by the `script/install` script.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## Bugs

I want this to work for everyone; that means when you clone it down it should work for you even though you may not have `rbenv` installed, for example. That said, I do use this as *my* dotfiles, so there's a good chance I may break something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please [open an issue](https://github.com/tbjers/dotfiles/issues) on this repository and I'd love to get it fixed for you!

## Thanks

Thank you to [Zach Holman](https://github.com/holman) for creating the original dotfiles repository that I have based mine on as well as [Scott Deeter](https://github.com/deetergp) for showing me the wonders of dotfiles.

I have always kept some form of repository with my configurations and dotfiles but never thought to automate it for my various systems to the degree that some of these guys have done.

## Original Thanks

I forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the weight of my changes and tweaks inspired me to finally roll my own. But Ryan's dotfiles were an easy way to get into bash customization, and then to jump ship to zsh a bit later. A decent amount of the code in these dotfiles stem or are inspired from Ryan's original project.
