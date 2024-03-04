#
#   Ailton Baúque
#   http://github.com/vybraan/dotfiles
#   vybraan
#

call plug#begin('~/.vim/plugged')
" Here will be only plugins

" Sample initial plugin
Plug 'terroo/vim-simple-emoji'
Plug 'matsuuu/pinkmare'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

call plug#end()


set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8 " Important to YCM


map q :quit<CR> " for quit only type q on command mode

" for save using Ctrl + s on command mode
" Need run this command: echo 'stty -ixon' >> ~/.bashrc && exec $SHELL
map <C-s> :write<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set completeopt-=preview

let g:ycm_show_diagnostics_ui = 0

colorscheme pinkmare

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]


let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


let extension = expand('%:e')

if( extension == "cpp" || extension == "cc" || extension == "h" || extension == "hpp" ) 
Plug 'ycm-core/YouCompleteMe'
else
Plug 'zxqfl/tabnine-vim'
endif
