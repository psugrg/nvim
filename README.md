# Neovim Configuration

This neovim is configured in `lua`.

> ℹ️  Type `:h rtp` for detaile about the `neovim` startup configuration procedure

## Structure

- init.lua - root file where `neovim` starts looking for configuration (*lua modue style*)
- lua - Everything inside of the `lua` directory will automatically *sourced* by *neovim* 
    - psu - user defined configuration (*psu* in this case). It's a *lua* module for convinience
        - [init.lua](./lua/psu/init.lua) - module initialization file[^1]
        - [set.lua](./lua/psu/set.lua) - *neovim* basic configuration (e.g. line numbers, tabs-to-space, tab width etc.)
        - [remap.lua](./lua/psu/remap.lua) - custom key mapping
        - [lazy.lua](./lua/psu/lazy.lua) - **plugin manager configuration**
        - plugin - plugins (and colorschemes) configuration
            - ... - plugin configurations (one per file)

## Plugins & Color Schemes

> ⚡ This configuration uses the [*lazy.nvim*](https://github.com/folke/lazy.nvim) as a package manager

> ℹ️  Use `:Lazy` to spawn *lazy.nvim* plugin manager UI

> ℹ️  Color schemes are managed also by the package manager

> ℹ️  Use `:checkhealth <name_of_plugin>` to inspect the plugin

### Color Schemes

Color schemes are installed by a plugin manager, configured by a configuration file and selected by the color-scheme init file.

#### Adding New Scheme

1. Find your new scheme on github (e.g.: https://github.com/rose-pine/neovim).
Make sure that it supports *neovim*. 
1. Add color scheme to the plugin [configuration](./lua/psu/lazy.lua) by extending the list of plugins to be installed.
1. Opt. Create a color scheme configuration file and add it to the [plugin configuration directory](./lua/psu/plugin).
2. Enable it in the [psu init file](./lua/psu/init.lua) by adding `vim.cmd('colorscheme name-of-the-colorscheme`).

#### Changing Color Scheme

Simply comment-out the previous colorscheme in the [psu module init file](./lua/psu/init.lua) and uncomment the new colorsheme. 

### Plugins

Plugins are installed by a plugin manager and configured by a configuration file. 

#### Adding New Plugin

1. Find your new plugin on github (e.g.: https://github.com/nvim-treesitter/nvim-treesitter).
1. Add it to the [configuration](./lua/psu/lazy.lua) by extending the list of plugins to be installed.
1. Create a configuration file in the `./lua/psu/plugin` directory.
1. Import new configuration by adding `require("psu.plugin.config-file-name")` to the [psu module init file](./lua/psu/init.lua).

#### Telescope

A plugin to fuzzy-find your files!

> ℹ️  Use `:checkhealth telescope` to inspect the plugin

Deps:

```sh
sudo apt install ripgrep fd-find
```

[^1]: In *lua* folder can also be a module if it contains the `init.lua` file

