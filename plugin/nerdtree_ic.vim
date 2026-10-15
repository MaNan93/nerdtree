" Portable Unicode icons for IC/RTL projects. Loaded by this NERDTree fork.
scriptencoding utf-8
if exists('g:loaded_nerdtree_ic_custom')
  finish
endif
let g:loaded_nerdtree_ic_custom = 1

" F2 toggles NERDTree when the key is otherwise unused.
if get(g:, 'NERDTreeICMapF2', 1) && maparg('<F2>', 'n') ==# ''
  nnoremap <silent> <F2> :NERDTreeToggle<CR>
endif

" Glyphs below were selected from Unicode groups 01-03 tested on Linux GVim
" with DejaVu LGC Sans Mono 12. No Emoji or Nerd Font glyphs are needed.
let g:NERDTreeDirArrowExpandable = get(g:, 'NERDTreeDirArrowExpandable', '▸')
let g:NERDTreeDirArrowCollapsible = get(g:, 'NERDTreeDirArrowCollapsible', '▾')
" NERDTree initializes Windows arrows before this plugin; use Unicode there too.
if get(g:, 'NERDTreeICUnicodeArrows', 1)
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
endif

" vim-devicons must be installed and loaded after NERDTree.
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = '◇'
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = '▣'
let g:DevIconsDefaultFolderOpenSymbol = '▤'
let g:WebDevIconsUnicodeDecorateFolderNodesSymlinkSymbol = '◇'

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols =
      \ get(g:, 'WebDevIconsUnicodeDecorateFileNodesExtensionSymbols', {})
let s:icons = {
      \ 'v':'◆', 'sv':'◆', 'vh':'◈', 'svh':'◈',
      \ 'vhd':'◆', 'vhdl':'◆', 'sdc':'⚙', 'xdc':'⚙',
      \ 'tcl':'⚙', 'f':'▤', 'lst':'▤', 'ralf':'▣',
      \ 'sdf':'◇', 'lib':'▣', 'lef':'▣',
      \ 'def':'▣', 'spef':'◇', 'py':'✦',
      \ 'sh':'✦', 'pl':'✦', 'csv':'▥',
      \ 'json':'▧', 'yaml':'▧', 'yml':'▧',
      \ 'md':'▤', 'txt':'▤', 'c':'●', 'h':'○',
      \ 'cc':'●', 'cpp':'●', 'hpp':'○',
      \ 'vim':'✦', 'xml':'▧', 'log':'▤',
      \ 'ini':'⚙', 'cfg':'⚙', 'conf':'⚙',
      \ 'mk':'⚙', 'sh':'✦', 'bat':'✦',
      \ 'gz':'▦', 'zip':'▦', 'tar':'▦'
      \ }
for [s:ext, s:glyph] in items(s:icons)
  if !has_key(g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols, s:ext)
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols[s:ext] = s:glyph
  endif
endfor
unlet s:ext s:glyph s:icons
