# Dependence
- `rocks.nvim` need `lua-5.1` and `luarocks` or `luajit`

# Installation
## ~setup [`lua-5.1`](https://www.lua.org/)~
```bash
wget https://www.lua.org/ftp/lua-5.1.5.tar.gz
tar xzf lua-5.1.5.tar.gz
cd lua-5.1.5
make macosx
mkdir ~/opt
make INSTALL_TOP=$HOME/opt/lua@5.1 install
```
put `~/opt/lua@5.1/bin` in the path in your `.bashrc`
```bash
# .bashrc
export PATH="$PATH:$HOME/opt/lua@5.1/bin/"
```

## ~setup [`luarocks`](https://luarocks.org/)~
```bash
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
./configure --prefix=$HOME/opt/luarocks
# ./configure --prefix=$HOME/opt/luarocks --with-lua=$HOME/opt/luajit --with-lua-include=$HOME/opt/luajit/include/luajit-2.1
make
make install
```
put `~/opt/luajit/bin` in the path in your `.bashrc`
```bash
# .bashrc
export PATH="$PATH:$HOME/opt/luarocks/bin/"
```

## setup [`luajit`](https://luajit.org/)
```bash
git clone https://luajit.org/git/luajit.git
cd luajit
make
make install PREFIX=$HOME/opt/luajit
```
put `~/opt/luajit/bin` in the path in your `.bashrc`
```bash
# .bashrc
export PATH="$PATH:$HOME/opt/luajit/bin/"
```

## setup `rocks.nvim`
```bash
git clone https://github.com/ingB3/nvim-config.git
cd nvim-config
./load.sh
nvim
```
copy `nvim` config folder, after then run `nvim`
`nvim` automattically load `/nvim/lua/core/rocks.lua`, install `luarocks` and `rocks.nvim`

- `image.nvim` need `ImageMagick`
    - Using `processor = "magick_cli"` option
