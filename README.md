## Install required packages

```sh
yay -S fzf fd bat eza zoxide fastfetch pyenv rustup rbenv fish fisher docker docker-compose terraform enpass brave-bin chezmoi lazygit
```

## Install fish plugins

```sh
fish
fisher update
tide configure
```

## Install `n` and Node lts

```sh
curl -L https://bit.ly/n-install | bash
n lts
```

## Install python 3

`pyenv install 3.12.4`

## Install ruby 3

```sh
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install 3.3.2
```

## Install rust lts

```sh
rustup toolchain install stable
```

## Initiate chezmoi

TODO: write this up
