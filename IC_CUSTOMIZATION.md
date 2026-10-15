# IC/RTL customization (MaNan93 fork)

This fork retains upstream NERDTree behavior and adds a small, separately maintained
`plugin/nerdtree_ic.vim` customization. No changes are needed in `_vimrc`
for the **F2** shortcut after you install this fork.

## Shortcuts

- **F2 (normal mode)**: toggle NERDTree (`:NERDTreeToggle`).
- To keep an existing F2 mapping, this fork only maps F2 when it is unmapped.
- To disable this mapping entirely, set `let g:NERDTreeICMapF2 = 0`
  **before** this plugin is loaded in your `_vimrc`.

## Icons

File-type and folder icons are optional and use
[vim-devicons](https://github.com/ryanoasis/vim-devicons); NERDTree alone
does not implement file-type icons. Icons cover Verilog/SystemVerilog,
VHDL, Tcl/SDC/XDC, filelists, Liberty/LEF/DEF/SDF/SPEF, RALF, Python,
shell, Perl, CSV, JSON, YAML and Markdown. Open/closed folder glyphs are enabled.

For Windows GVim 9.1:

1. Install a Nerd Font and choose it in GVim, for example:
   `set guifont=CaskaydiaCove_Nerd_Font:h11` (change to the font's actual GUI name).
2. Install **this fork**, not the upstream NERDTree repository.
3. Install `ryanoasis/vim-devicons` and ensure it is loaded **after** NERDTree.
4. Restart GVim and use **F2** to toggle the tree.

Example using vim-plug in `_vimrc`:

```vim
set encoding=utf-8
call plug#begin('~/vimfiles/plugged')
Plug 'MaNan93/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()
```

If you do not install vim-devicons, F2 and directory arrows still work,
but file-type icons will not appear.

Customize any extension by setting the relevant entry in
`g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols` in `_vimrc`
before plugins load. The fork does not overwrite existing extension mappings.
