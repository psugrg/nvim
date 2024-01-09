# Neovim configuration

> ℹ️  Type `:h rtp` for detaile about the `neovim` startup configuration procedure

> ℹ️  Neovim is configured in `lua` language

## Structure

- init.lua - root file where `neovim` starts looking for configuration (*lua modue style*)
- lua - Everything inside of the `lua` directory will automatically *sourced* by *neovim* 
    - psu - user defined configuration (*psu* in this case). It's a *lua* module for convinience

    > ℹ️  In *lua* folder can also be a module if it contains the `init.lua` file

        - init.lua - module initialization file
        - set.lua - *neovim* basic configuration (e.g. line numbers, tabs-to-space, tab width etc.)

