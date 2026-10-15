# IC / RTL file icons (MaNan93 NERDTree fork)

This fork adds an **F2** NERDTree toggle and a set of portable Unicode icons.
The characters were selected from the first three test groups confirmed
visible in Linux GVim with **DejaVu LGC Sans Mono 12**. No Nerd Font and
no Emoji font are required for the customized file types.

## Install

```vim
call plug#begin('~/.vim/plugged')
Plug 'MaNan93/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()
```

Run `:PlugUpdate`, then restart GVim. The `vim-devicons` plugin is
**required** for per-file icons; NERDTree itself does not generate them.
Keep vim-devicons after NERDTree in the plugin list.

## Icon legend

- `◆` RTL source: `.v`, `.sv`, `.vhd`
- `◈` RTL headers: `.vh`, `.svh`
- `⚙` Tcl, SDC/XDC and configuration files
- `✦` Python, shell and Perl scripts
- `▤` filelists, Markdown, text and logs
- `▣` library, LEF/DEF and RALF files
- `▧` JSON and YAML; `▥` CSV
- `▸` collapsed directory; `▾` expanded directory
- `▣` closed folder; `▤` open folder

Symbols for these file types override vim-devicons' built-ins. Other
vim-devicons built-in file types may still use Nerd Font icons; additional
extensions can be overridden with
`g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols`.

## Options

F2 toggles NERDTree in normal mode if F2 is not mapped already.
Disable it by setting `let g:NERDTreeICMapF2 = 0` before loading plugins.

Customization is isolated in `plugin/nerdtree_ic.vim` to ease upstream merges.
