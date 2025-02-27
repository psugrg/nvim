# Neovim Configuration

This neovim is configured in `lua`.

> ℹ️ Type `:h rtp` for detaile about the `neovim` startup configuration procedure

## Structure

- init.lua - root file where `neovim` starts looking for configuration (_lua
  modue style_)
- lua - Everything inside of the `lua` directory will automatically _sourced_
  by _neovim_
  - psu - user defined configuration (_psu_ in this case). It's a _lua_ module
    for convinience
    - [init.lua](./lua/psu/init.lua) - module initialization file[^1]
    - [set.lua](./lua/psu/set.lua) - _neovim_ basic configuration (e.g. line
      numbers, tabs-to-space, tab width etc.)
    - [remap.lua](./lua/psu/remap.lua) - custom key mapping
    - [lazy.lua](./lua/psu/lazy.lua) - **plugin manager configuration**
    - plugins - plugins (and colorschemes) configuration
      - ... - plugin configurations (one per file)

## Plugins & Color Schemes

It's inspired by
[youtube video](https://youtu.be/6mxWayq-s9I?si=wi8LI_XdteKljoIE) from Josean Martinez.

> ⚡ This configuration uses the
> [_lazy.nvim_](https://github.com/folke/lazy.nvim) as a package manager
>
> ℹ️ Use `:Lazy` to spawn _lazy.nvim_ plugin manager UI
>
> ℹ️ Color schemes are managed also by the package manager
>
> ℹ️ Use `:checkhealth <name_of_plugin>` to inspect the plugin

### Adding New Plugin

1. Find your new plugin on github
   (e.g.: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)).
1. Create a configuration file in the `./lua/psu/plugin` directory using a following
   scheme:

```lua
return {
    "plugin-name/neovim",
    config = function()
        require('plugin-name').setup({
            -- Add setup code here (if needed)
        })

    -- Add extra configuration here (like key-mapping etc.)

    end
}
```

> ℹ️ Using `config` is optional and required only of a plugin has a `setup`
> function that is required to be called

[^1]: In _lua_ folder can also be a module if it contains the `init.lua` file
