# IC/RTL icons for NERDTree (MaNan93 fork)

This fork adds F2 toggle and file-type icons for chip design work.

## Installation

Install both plugins. `vim-devicons` is required to actually render icons:

```vim
call plug#begin('~/.vim/plugged')
Plug 'MaNan93/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()
```

Use `:PlugUpdate` and restart Vim. F2 toggles NERDTree in normal mode.

## Font requirement

**Linux terminal Vim:** select a Nerd Font in your terminal emulator's font
preferences. Example: JetBrainsMono Nerd Font or CaskaydiaCove Nerd Font.
Setting Vim's `guifont` does not affect terminal Vim.

**Windows GVim:** select an installed Nerd Font using `set guifont`.
Check `:set encoding?` shows `utf-8`.

Icons are enabled on both platforms by default. If question marks or boxes
appear instead of icons, the active font cannot display the glyphs; changing
the glyph mapping alone cannot fix a missing font.

## File types

- RTL: `.v`, `.sv`, `.vh`, `.svh`, VHDL
- EDA: Tcl, SDC, XDC, filelists, RALF, SDF, Liberty, LEF, DEF, SPEF
- Scripts/data: Python, shell, Perl, JSON, YAML, CSV, Markdown
- Open and closed folders have distinct Nerd Font symbols through vim-devicons.

## Customization

The implementation is in `plugin/nerdtree_ic.vim`. It avoids editing NERDTree
core files. Existing custom extension symbols are not overwritten.
To disable the F2 mapping set `let g:NERDTreeICMapF2 = 0` in your vimrc
before plugin loading. If F2 is already mapped, the plugin leaves it alone.
