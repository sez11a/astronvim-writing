# AstroNvim: VimStar Edition

This is a user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim). It takes all the features of [VimStar](https://github.com/sez11a/VimStar) and adds them to AstroNvim, which is a much better and more widely used Neovim distribution.

## 🛠️ Installation

Of course, first make sure you have Neovim installed.

### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/my-nvim
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.astronvim
ln -s ~/.astronvim ~/.config/nvim
```

### Create a new user repository from this template

Fork the repository to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

### Clone the repository

```shell
git clone https://github.com/[your_user]/[your_repository] ~/.config/nvim/lua/user
```

### Start Neovim

```shell
nvim
```

## For Liferay Technical Writers

- Spaces, no tabs
- Toggle outline of Markdown headings ([space] o u)
- Spell check on
- Diff wraps
- Markdownlint enabled, use this config:

```json
{
  "line-length": false,
  "no-trailing-spaces": false
}
```

- For reviews, diff current branch against master ([space] g m)
- Diff against any commit with :Git difftool -y [git hash]
- Snippets for badges, tokens, and more
