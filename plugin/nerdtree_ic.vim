" NERDTree IC/RTL icons and F2 toggle, for MaNan93 fork.
scriptencoding utf-8
if exists('g:loaded_nerdtree_ic_custom')
  finish
endif
let g:loaded_nerdtree_ic_custom = 1

if get(g:, 'NERDTreeICMapF2', 1) && maparg('<F2>', 'n') ==# ''
  nnoremap <silent> <F2> :NERDTreeToggle<CR>
endif

" Always enable file/folder icons on Linux and Windows.
" Requires ryanoasis/vim-devicons and a font with Nerd Font glyphs.
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = get(g:, 'WebDevIconsUnicodeGlyphDoubleWidth', 1)
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Use mostly BMP legacy Nerd Font glyphs to improve compatibility.
" All icon overrides can be set in vimrc before loading this plugin.
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols =
      \ get(g:, 'WebDevIconsUnicodeDecorateFileNodesExtensionSymbols', {})
let s:icons = {
      \ 'v': '', 'sv': '', 'vh': '', 'svh': '',
      \ 'vhd': '', 'vhdl': '',
      \ 'sdc': '', 'xdc': '', 'tcl': '',
      \ 'f': '', 'lst': '', 'ralf': '',
      \ 'sdf': '', 'lib': '', 'lef': '',
      \ 'def': '', 'spef': '',
      \ 'py': '', 'sh': '', 'pl': '',
      \ 'csv': '', 'json': '', 'yaml': '',
      \ 'yml': '', 'md': '', 'txt': ''
      \ }
for [s:ext, s:glyph] in items(s:icons)
  if !has_key(g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols, s:ext)
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols[s:ext] = s:glyph
  endif
endfor
unlet s:ext s:glyph s:icons
