
# personal nvim config

dependencies:

- [Packer](https://github.com/wbthomason/packer.nvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep).

# Installing on ubuntu like system from scratch

### Before cloning config you need to install some tools:
```
apt update && apt upgrade &&\
apt install -y sudo curl git ripgrep build-essential
```

Node lts:
```
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Install Packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

### Than install neovim 

make sure nvim is 0.8 or better 0.9

for example from Tarball:

```
curl -Lo ~/nvim.tar.gz "https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz"
tar xf ~/nvim.tar.gz -C ~/.
cp -r ~/nvim-linux64/* /usr/.
```

### Then copy this config

Create nvim config dir:
```
mkdir -p ~/.config/nvim
```

Copy repo config:
```
git clone https://github.com/devid-corsard/init.lua.git ~/.config/nvim/.
```
Open nvim and go to `packer.lua`


execute `:so` and then `:PackerSync` 2 times

1 time it installs itself, and then other plugins

Quit vim and open it again and wait while all compiles

than check if everything is working =)

to istall lsp run:
```
:LspInstall <language>

e.g.:

:LspInstall rust
```

To use [LazyGit](https://github.com/jesseduffield/lazygit#installation) (\<space\>gg - shortcut) install it:

```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```
