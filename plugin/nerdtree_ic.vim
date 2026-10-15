" NERDTree IC/RTL customization for MaNan93's fork.
" Loaded automatically with this fork; no _vimrc mappings required.
scriptencoding utf-8

if exists('g:loaded_nerdtree_ic_custom')
  finish
endif
let g:loaded_nerdtree_ic_custom = 1

" F2 works from any normal-mode buffer, including the NERDTree window.
" Set g:NERDTreeICMapF2 = 0 in vimrc before plugin loading to opt out.
if get(g:, 'NERDTreeICMapF2', 1) && maparg('<F2>', 'n') ==# ''
  nnoremap <silent> <F2> :NERDTreeToggle<CR>
endif

" Windows NERDTree has already initialized '+' and '~' by this point.
" Replace them explicitly, with an opt-out for legacy fonts.
if get(g:, 'NERDTreeICUseUnicodeArrows', 1)
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
endif

" File and directory icons require ryanoasis/vim-devicons plus a Nerd Font.
" The following are applied before vim-devicons initializes its dictionary.
let g:WebDevIconsUnicodeDecorateFileNodes = get(g:, 'WebDevIconsUnicodeDecorateFileNodes', 1)
let g:WebDevIconsUnicodeDecorateFolderNodes = get(g:, 'WebDevIconsUnicodeDecorateFolderNodes', 1)
let g:DevIconsEnableFoldersOpenClose = get(g:, 'DevIconsEnableFoldersOpenClose', 1)

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols =
      \ get(g:, 'WebDevIconsUnicodeDecorateFileNodesExtensionSymbols', {})
let s:ic_icons = {
      \ 'v':    '󰍛',
      \ 'sv':   '󰍛',
      \ 'vh':   '󰍛',
      \ 'svh':  '󰍛',
      \ 'vhd':  '󰍛',
      \ 'vhdl': '󰍛',
      \ 'sdc':  '󰒓',
      \ 'xdc':  '󰒓',
      \ 'tcl':  '󰒓',
      \ 'f':    '󰈙',
      \ 'F':    '󰈙',
      \ 'lst':  '󰈙',
      \ 'ralf': '󰘦',
      \ 'sdf':  '󰍛',
      \ 'lib':  '󰍛',
      \ 'lef':  '󰍛',
      \ 'def':  '󰍛',
      \ 'spef': '󰍛',
      \ 'py':   '',
      \ 'sh':   '',
      \ 'pl':   '',
      \ 'csv':  '󰈛',
      \ 'json': '',
      \ 'yaml': '',
      \ 'yml':  '',
      \ 'md':   '',
      \ 'txt':  '󰈙'
      \ }
for [s:ext, s:glyph] in items(s:ic_icons)
  if !has_key(g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols, s:ext)
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols[s:ext] = s:glyph
  endif
endfor
unlet s:ext s:glyph s:ic_icons
