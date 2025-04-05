I got a erro with indent_blankline.

the error was:
```
Error executing vim.schedule lua callback: vim/_editor.lua:0: nvim_exec2()[1]..ColorScheme Autocommands for "*": Vim(lua):E5108: Error executing lua [string ":lua"]:1: module 'indent_blank
line.utils' not found:
        no field package.preload['indent_blankline.utils']
        cache_loader: module 'indent_blankline.utils' not found
        cache_loader_lib: module 'indent_blankline.utils' not found
        no file './indent_blankline/utils.lua'
        no file '/usr/share/luajit-2.1/indent_blankline/utils.lua'
        no file '/usr/local/share/lua/5.1/indent_blankline/utils.lua'
        no file '/usr/local/share/lua/5.1/indent_blankline/utils/init.lua'
        no file '/usr/share/lua/5.1/indent_blankline/utils.lua'
        no file '/usr/share/lua/5.1/indent_blankline/utils/init.lua'
        no file './indent_blankline/utils.so'
        no file '/usr/local/lib/lua/5.1/indent_blankline/utils.so'
        no file '/usr/lib/lua/5.1/indent_blankline/utils.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'
        no file './indent_blankline.so'
        no file '/usr/local/lib/lua/5.1/indent_blankline.so'
        no file '/usr/lib/lua/5.1/indent_blankline.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'
stack traceback:
        [C]: in function 'require'
        [string ":lua"]:1: in main chunk
        [C]: in function 'nvim_exec2'
        vim/_editor.lua: in function 'cmd'
        ...linmd/.local/share/lunarvim/lvim/lua/lvim/core/theme.lua:86: in function 'setup'
        ...inmd/.local/share/lunarvim/lvim/lua/lvim/config/init.lua:103: in function <...inmd/.local/share/lunarvim/lvim/lua/lvim/config/init.lua:92>
stack traceback:
        [C]: in function 'nvim_exec2'
        vim/_editor.lua: in function 'cmd'
        ...linmd/.local/share/lunarvim/lvim/lua/lvim/core/theme.lua:86: in function 'setup'
        ...inmd/.local/share/lunarvim/lvim/lua/lvim/config/init.lua:103: in function <...inmd/.local/share/lunarvim/lvim/lua/lvim/config/init.lua:92>

```

to solve this I disabled it. 

run: `TSDisable indent`
run: `Lazy clean`
and add this line on plugins: `{ "lukas-reineke/indent-blankline.nvim", enabled = false }`
  
