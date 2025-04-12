# jim nist dotfiles

forked from [Ryan Bates' dotfiles](https://github.com/ryanb/dotfiles)

## software to install

see [this gist](https://gist.github.com/jimnist/cb31f87629fe2c3738203d7084a2a889)

## installation

Run the `bin/install` command to copy files over. It will prompt you before replacing if the files already exist.

```sh
git clone git@github.com:jimnist/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bin/install
```

After installing, open a new terminal window to see the effects.

customize the .zshrc file.


## features

code goes in ~/code, so this directory can easily be accessed (and tab completed) with the "c" command.

```sh
c railsca<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```sh
h doc<tab>
```

If you're using git, you'll notice the current branch name shows up in the prompt while in a git repository.


## uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gitconfig
unlink ~/.gemrc
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm -rf ~/.dotfiles
```

Then open a new terminal window to see the effects.
