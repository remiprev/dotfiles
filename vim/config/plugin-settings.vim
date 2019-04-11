" Plugged settings
" ----------------------------------------------------------------------------------------------------
let g:plug_window = 'topleft new'

" ctrlp.vim settings
" ----------------------------------------------------------------------------------------------------
map <Leader>t :CtrlP $(pwd)<CR>
map <Leader>T :CtrlPClearCache<CR>:CtrlP $(pwd)<CR>
map <Leader>o :CtrlP %:p:h<CR>
map <Leader>, :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRU<CR>
map <Leader>l :CtrlPLine<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = {}
let g:ctrlp_custom_ignore.dir = '\v(^|\/)(deps|doc|log|vendor|tmp|_build|node_modules|\.git|bower_components|\.bower-cache|dist|\.elixir_ls)$'
let g:ctrlp_custom_ignore.file = '\v(^|\/)(\.DS_Store|.*\.js\.map)$'

let g:ctrlp_status_func = {}
let g:ctrlp_status_func.main = 'CtrlP_Statusline_1'
let g:ctrlp_status_func.prog = 'CtrlP_Statusline_2'

function! CtrlP_Statusline_1(...)
  let item = a:5
  let directory = '%#NonText# '.(item == 'files' ? getcwd() : '')

  return " ".item." ".directory
endf

function! CtrlP_Statusline_2(...)
  let progress = a:1

  return progress
endf

" YankRing
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
let g:yankring_clipboard_monitor=0

map <Leader>y :YRShow<CR>

autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline

" Rails.vim settings
" ----------------------------------------------------------------------------------------------------
let g:rails_statusline=0

" Ack.vim settings
" ----------------------------------------------------------------------------------------------------
let g:ackprg = 'rg --no-heading --color=never --column --line-number'

" vim-markdown settings
" ----------------------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1

" vim-localvimrc settings
" ----------------------------------------------------------------------------------------------------
let g:localvimrc_name = [".local.vimrc"]
let g:localvimrc_persistent = 1
let g:localvimrc_persistence_file = expand('$HOME').'/.vim-local/vim-localvimrc'

" vim-javascript settings
" ----------------------------------------------------------------------------------------------------
let b:javascript_fold=0
let g:javascript_plugin_flow=1
hi! def link jsGlobalObjects Conditional
hi! def link jsStatement Statement
hi! def link jsConditional Statement
hi! def link jsRepeat Statement
hi! def link jsLabel Statement
hi! def link jsKeyword Statement
hi! def link jsClass Statement
hi! def link jsException Statement
hi! def link jsSuper Statement
hi! def link jsStorageClass Statement
hi! def link jsPrototype Statement
hi! def link jsThis Identifier

" vim-jsx settings
" ----------------------------------------------------------------------------------------------------
let g:jsx_ext_required = 0

" vim-easy-align settings
" ----------------------------------------------------------------------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {
\  's': {
\    'pattern': ' ',
\    'left_margin': 1,
\    'right_margin': 1,
\    'stick_to_left': 0,
\  }
\}

" ALE settings
" ----------------------------------------------------------------------------------------------------
" Fixers
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.elixir = g:ale_fixers['*'] + ['mix_format']
let g:ale_fixers.javascript = g:ale_fixers['*'] + ['prettier']
let g:ale_fixers.typescript = g:ale_fixers['*'] + ['prettier']
let g:ale_fixers.php = g:ale_fixers['*'] + ['phpcbf']
let g:ale_fixers.scss = g:ale_fixers['*'] + ['prettier']
let g:ale_fixers.markdown = g:ale_fixers['*'] + ['prettier']

" Linters
let g:ale_linters_explicit = 1
let g:ale_linters = {}
let g:ale_linters.elixir = ['credo']
let g:ale_linters.javascript = ['eslint']
let g:ale_linters.php = ['phpcs']
let g:ale_linters.ruby = ['rubocop']
let g:ale_linters.scss = ['stylelint']
let g:ale_linters.typescript = ['tslint', 'tsserver']

" Global
let g:ale_echo_delay = 10
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 100
let g:ale_sign_error = '→'
let g:ale_sign_warning = '→'
let g:ale_keep_list_window_open = 1
let g:ale_open_list = 1

" Tool-specific
let g:ale_elixir_elixir_ls_release = expand('$HOME').'/Code/elixir-ls/rel'
let g:ale_php_phpcs_options = '--warning-severity=0'

" Mappings
nmap <Leader>ad :ALEGoToDefinition<CR>
nmap <Leader>ah :ALEHover<CR>
nmap <Leader>ar :ALEFindReferences<CR>

" Highlights
highlight clear ALEWarning
highlight ALEErrorSign ctermfg=1
highlight ALEWarningSign ctermfg=3

" vim-commentary settings
" ----------------------------------------------------------------------------------------------------
nmap <Leader>cc <Plug>CommentaryLine
xmap <Leader>cc <Plug>Commentary

" emmet settings
" ----------------------------------------------------------------------------------------------------
let g:user_emmet_leader_key = ';'
let g:user_emmet_expandabbr_key = ';;'
let g:user_emmet_settings = {
\  'indentation': '  ',
\  'css': {
\    'snippets': {
\      'fs': 'font-size:|px;',
\      'fy': 'font-style:|;',
\      'di': 'display:|;',
\      'bo': 'border:|;',
\      'bo:n': 'border:none;',
\      'ba': 'background:#|;',
\      'pa': 'padding:|;',
\      'ma': 'margin:|;',
\      'he': 'height:|;',
\      'wi': 'width:|;',
\      'co': 'color:#|;',
\      'pos': 'position:|;',
\      'pos:s': 'position:static;',
\      'pos:a': 'position:absolute;',
\      'pos:r': 'position:relative;',
\      'pos:f': 'position:fixed;',
\      't': 'top:|;',
\      'r': 'right:|;',
\      'b': 'bottom:|;',
\      'l': 'left:|;',
\      'z': 'z-index:|;',
\      'fl': 'float:|;',
\      'fl:n': 'float:none;',
\      'fl:l': 'float:left;',
\      'fl:r': 'float:right;',
\      'cl': 'clear:|;',
\      'cl:b': 'clear:both;',
\      'd': 'display:|;',
\      'd:n': 'display:none;',
\      'd:b': 'display:block;',
\      'd:i': 'display:inline;',
\      'd:ib': 'display:inline-block;',
\      'v': 'visibility:|;',
\      'ov': 'overflow:|;',
\      'm': 'margin:|;',
\      'p': 'padding:|;',
\      'w': 'width:|;',
\      'h': 'height:|;',
\      'bg': 'background:|;',
\      'lis': 'list-style:|;',
\      'va': 'vertical-align:|;',
\      'va:m': 'vertical-align:middle;',
\      'ta': 'text-align:|;',
\      'ta:l': 'text-align:left;',
\      'ta:c': 'text-align:center;',
\      'ta:r': 'text-align:right;',
\      'td': 'text-decoration:|;',
\      'td:n': 'text-decoration:none;',
\      'td:u': 'text-decoration:underline;',
\      'tt': 'text-transform:|;',
\      'tt:n': 'text-transform:none;',
\      'tt:u': 'text-transform:uppercase;',
\      'tsh': 'text-shadow:|;',
\      'lh': 'line-height:|;',
\      'fw:n': 'font-weight:normal;',
\      'fw:b': 'font-weight:bold;',
\      'ff': 'font-family:|;',
\      'op': 'opacity:|;',
\      'cur': 'cursor:|;',
\    },
\  },
\  'eruby': {
\    'snippets': {
\      'ee': "<%= | %>",
\      'er': "<% | %>",
\    },
\  },
\  'eelixir': {
\    'snippets': {
\      'ee': "<%= | %>",
\      'er': "<% | %>",
\    },
\  },
\}
