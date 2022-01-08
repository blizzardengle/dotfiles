# dotfiles & functions

These are my personal dot files for Linux, inspired by [Lawrence Systems dotfiles repo](https://github.com/flipsidecreations/dotfiles). This uses a better install and uninstall process. I have also added support for adding custom functions to the terminal.

## Installation: Clone Option

If you want to use my exact setup and update your local machine to match any future changes clone this repository:

```
# You can clone anywhere you want, this does not have to be your home dir
cd ~
git clone https://github.com/blizzardengle/dotfiles.git
cd dotfiles
```

Now you can run the installer (see below). From time to time you will want to check of if there are any updates by running the following command in the `dotfiles` directory:

```
git remote update
git status
```

If things have changed you should first run the uninstaller (see below), run the following command to update, and then run the installer again.

```
git pull origin master
```

Keep in mind that this command will overwrite any local changes you may have made. If you do get a error that there is local commits that conflict with the remote repository, you can run the previous command with the force `-f` flag overwriting your local files or the following command to merge the changes together:

```
git merge origin/master
```

## Installation: Copy Option

If you want to use these files as the base for your own setup you should copy them by downloading the zip file of this repository. Once you have placed the `dotfiles` folder where you want it on your computer, run the installer (see below).

## Install

In the `dotfiles` directory run the installer script:

```
./install.sh
```

## Uninstall

In the `dotfiles` directory run the uninstaller script:

```
./uninstall.sh
```
