# Neovim Configuration

> ℹ️  Type `:h rtp` for detaile about the `neovim` startup configuration procedure

> ℹ️  Neovim is configured in `lua` language

## Structure

- init.lua - root file where `neovim` starts looking for configuration (*lua modue style*)
- lua - Everything inside of the `lua` directory will automatically *sourced* by *neovim* 
    - psu - user defined configuration (*psu* in this case). It's a *lua* module for convinience
        - [init.lua](./lua/psu/init.lua) - module initialization file[^1]
        - [set.lua](./lua/psu/set.lua) - *neovim* basic configuration (e.g. line numbers, tabs-to-space, tab width etc.)
        - [remap.lua](./lua/psu/remap.lua) - custom key mapping
        - [lazy.lua](./lua/psu/lazy.lua) - **plugin manager configuration**
        - color-scheme - color schemes cofiguration
            TODO: shouldn't I move this to `after/colors`?
            - [init.lua](./lua/psu/color-scheme/init.lua) - select desired color scheme
            - ... - color scheme configurations (one per file)
- after
    plugin - plugins configuration (automatically sourced by *neovim*)
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
1. Create a color scheme configuration file and add it to the color-scheme (initialization)[./lua/psu/color-scheme/init.lua] file

#### Changing Color Scheme

Just comment/uncomment line in the color-scheme (initialization)[./lua/psu/color-scheme/init.lua] file.

Remember that only one color-scheme can be active!

### Plugins

> TODO

#### Telescope

> ℹ️  Use `:checkhealth telescope` to inspect the plugin

Deps:

```sh
sudo apt install ripgrep fd-find
```

[^1]: In *lua* folder can also be a module if it contains the `init.lua` file

