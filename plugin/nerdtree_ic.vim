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

" Most Nerd Font icons below are private-use glyphs. Linux terminals often
" display a reverse question mark when the active font lacks these glyphs.
" Default to a portable, icon-free tree on Linux; opt in after configuring
" a Nerd Font in the terminal. Windows GVim keeps the original icon defaults.
let g:NERDTreeICUseNerdFont = get(g:, 'NERDTreeICUseNerdFont',
      \ has('win32') || has('win64') || has('win32unix'))

if get(g:, 'NERDTreeICUseUnicodeArrows', g:NERDTreeICUseNerdFont)
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
elseif !g:NERDTreeICUseNerdFont
  let g:NERDTreeDirArrowExpandable = '+'
  let g:NERDTreeDirArrowCollapsible = '~'
endif

" File and directory icons require ryanoasis/vim-devicons plus a Nerd Font.
" The following are applied before vim-devicons initializes its dictionary.
let g:WebDevIconsUnicodeDecorateFileNodes = get(g:, 'WebDevIconsUnicodeDecorateFileNodes', g:NERDTreeICUseNerdFont)
let g:WebDevIconsUnicodeDecorateFolderNodes = get(g:, 'WebDevIconsUnicodeDecorateFolderNodes', g:NERDTreeICUseNerdFont)
let g:DevIconsEnableFoldersOpenClose = get(g:, 'DevIconsEnableFoldersOpenClose', g:NERDTreeICUseNerdFont)

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
