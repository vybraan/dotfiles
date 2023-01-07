""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                  " VIM SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TURNS LINE NUMBERING ON
set nu
set termguicolors
set cursorline
set encoding=utf-8
set mouse=a
set title
set relativenumber
" trigger `autoread` when files changes on disk
      set autoread
      autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

" ENABLES A SYSTEM-WIDE VIMRC
set nocompatible 

" ENSURES DEFVAULT VIM SYNTAX HIGHLIGHTING
syntax on

" ENABLE MOUSE USE IN ALL MODES
set mouse=a

" ENABLE SAVING OF TAB TITLES FOR SESSIONS 
set sessionoptions+=tabpages,globals

set encoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                    " PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ENABLES PLUGINS TO WORK
filetype plugin on

" LOCATION OF WHERE PLUGINS ARE INSTALLED
" call plug#begin('~/.vim/addons')
call plug#begin('~/.local/share/nvim/plugged')









Plug 'mattn/emmet-vim'
Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'sickill/vim-monokai'
"Plug 'Yggdroot/indentLine'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'sbdchd/neoformat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'shougo/denite.nvim'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-rooter'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'cespare/vim-toml'
Plug 'nikvdp/neomux'
Plug 'Olical/aniseed'
Plug 'jlesquembre/nterm.nvim'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'jbyuki/venn.nvim'
Plug 'jbyuki/nabla.nvim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'Shadorain/shadotheme'
Plug 'npxbr/gruvbox.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'windwp/windline.nvim'
"Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/telescope.nvim'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'kyazdani42/blue-moon'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rafamadriz/friendly-snippets'
Plug 'matsuuu/pinkmare'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'













" Git wrapper for Vim
"Plug 'tpope/vim-fugitive'

" Git gutter for Vim
Plug 'airblade/vim-gitgutter'

" Preview markdown on your modern browser with synchronised scrolling and flexible configuration.
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Terminal in floating window
Plug 'voldikss/vim-floaterm'

" Support for Julia
Plug 'JuliaEditorSupport/julia-vim'

" Formatting Julia Files
Plug 'kdheepak/JuliaFormatter.vim'

" Automatic pane resizing
Plug 'camspiers/lens.vim'

" Region zooming for Vim
Plug 'chrisbra/NrrwRgn'

" LSP completion for Neovim
" Plug 'neovim/nvim-lsp'

" Formatting of HTML, JS, CSS, JSON, and JSX Files
Plug 'maksimr/vim-jsbeautify'

" Scratch Pad for quick notes
Plug 'mtth/scratch.vim'

" Adding support for LaTeX
Plug 'lervag/vimtex'

" Live Previewing of LaTeX Documents
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Moving through Vim easily
Plug 'easymotion/vim-easymotion'

" Text snippets for everything
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets' 

" Emoji support
" Plug 'fszymanski/deoplete-emoji'

" Command line fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --bin' } "Checks latest fzf binary
Plug 'junegunn/fzf.vim'

" Easy commenting for Vim
Plug 'preservim/nerdcommenter'

" Support for Todo.txt files
Plug 'freitass/todo.txt-vim'

" Gruvbox color theme for Vim 
Plug 'morhetz/gruvbox'

" Sends text to a target for execution
" Plug 'jpalardy/vim-slime'

" Ranger file browser integration
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Surrounding words with characters in Vim
" Plug 'tpope/vim-surround'

" Editing Jupyter files in Vim
Plug 'goerz/jupytext.vim'

" BibTeX Handling
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' "Also used for Markdown formatting

" VIM Table Mode for instant table creation.
Plug 'dhruvasagar/vim-table-mode'

" Deoplete Completion framework
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Tab naming powers
Plug 'gcmt/taboo.vim'

" Multiple cursors for editing
Plug 'mg979/vim-visual-multi'

" Adds file type icons to Vim plugins
Plug 'ryanoasis/vim-devicons'

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" Vim session saving
Plug 'tpope/vim-obsession'

" Rethinking Vim as a tool for writing
Plug 'reedes/vim-pencil'

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' "Installs themes for airline

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                " PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""
"JULIA FORMATTER
"""""""""""""""""""""

let g:JuliaFormatter_options = {
        \ 'indent'                    : 4,
        \ 'margin'                    : 92,
        \ 'always_for_in'             : v:false,
        \ 'whitespace_typedefs'       : v:false,
        \ 'whitespace_ops_in_indices' : v:true,
        \ }


"""""""""""""""""
"MARKDOWN-PREVIEW
"""""""""""""""""

" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

let g:mkdp_browser = 'vivaldi'

"""""""""""""""""""""
" AIRLINE
"""""""""""""""""""""

" Enabling Powerline symbols
let g:airline_powerline_fonts = 1

" Allows word counting in the following filetypes
let g:airline#extensions#wordcount#filetypes = '\vasciidoc|help|mail|markdown|pandoc|org|rst|tex|text'

" Shows all buffers when only one tab open
let g:airline#extensions#tabline#enabled = 0

" Removes fileformat
let g:airline_section_y = ''

" Removes section on whitespace errors, etc.
let g:airline_section_warning = ''

" Disable SPELL section
let g:airline_detect_spell = 0

" Handles file path displays
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Sets theme for airline
let g:airline_theme='gruvbox'

""""""""""""""""""""""""""""""
" VIM-JSBEAUTIFY 
""""""""""""""""""""""""""""""
".vimrc
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" for java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"""""""""""""""""""""""""""""
" VIM-EMOJI
""""""""""""""""""""""""""""""
set completefunc=emoji#complete

""""""""""""""""""""""""""""""
" JUPYTEXT
""""""""""""""""""""""""""""""
let g:jupytext_filetype_map = { 'py': 'python' }

""""""""""""""""""""""""""""""
" NVIM-LSP
""""""""""""""""""""""""""""""

"lua << EOF
    "require'nvim_lsp'.julials.setup{}
"EOF

"autocmd Filetype julia setlocal omnifunc=v:lua.vim.lsp.omnifunc

"nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>

""""""""""""""""""""""""""""""
" VIMPENCIL
""""""""""""""""""""""""""""""

" Automatically enable Pencil for files
augroup pencil
  autocmd!
  autocmd FileType py call pencil#init({'wrap' : 'soft'})
  autocmd FileType markdown call pencil#init({'wrap' : 'soft'})
  autocmd FileType julia call pencil#init({'wrap' : 'soft'})
  autocmd FileType tex call pencil#init({'wrap' : 'soft'})
augroup END

""""""""""""""""""""""""""""""
" COLORSCHEME
""""""""""""""""""""""""""""""
let g:gruvbox_termcolors=16
let g:gruvbox_contrast_dark = 'medium'
"colorscheme pinkmare
colorscheme onedark
"set background=dark " Setting dark mode
" Making comments italic
highlight Comment cterm=italic

""""""""""""""""""""""""""""""
" VIM-GITGUTTER
""""""""""""""""""""""""""""""
set updatetime=250
let g:gitgutter_max_signs = 500
let g:gitgutter_override_sign_column_highlight = 0

highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

""""""""""""""""""""""""""""""
" TABULAR & VIM-MARKDOWN
""""""""""""""""""""""""""""""

let g:vim_markdown_folding_level = 1

""""""""""""""""""""""""""""""
" VIM-PANDOC
""""""""""""""""""""""""""""""
let g:pandoc#filetypes#handled = ['pandoc', 'markdown'] 
let g:pandoc#modules#disabled = ['folding']
let g:pandoc#folding#fold_fenced_codeblocks = 1
let g:pandoc#folding#fold_yaml = 1
let g:pandoc#biblio#bibs = ['/home/src/Knowledgebase/Zettelkasten/zettel.bib']
let g:pandoc#toc#close_after_navigating = 0
let g:pandoc#toc#position = 'bottom' 
let g:pandoc#folding#fdc = 0

""""""""""""""""""""""""""""""
" VIM-PANDOC-SYNTAX
""""""""""""""""""""""""""""""
let g:pandoc#syntax#conceal#blacklist = ['strikeout', 'list', 'quotes']

""""""""""""""""""""""""""""""
" DEOPLETE
""""""""""""""""""""""""""""""

" Turns on Deoplete at start-up of Vim
let g:deoplete#enable_at_startup = 1

" Chooses backend for bibtex autocompletion
"let g:pandoc#completion#bib#mode = 'citeproc'

" Disables autocompletion while writing
"call deoplete#custom#option('auto_complete', v:false)

" Enables omnicompletion of citation keys
call deoplete#custom#var('omni', 'input_patterns', {
    			\ 'pandoc': '@'
    			\})

"" Enables deoplete for tex files
"" call deoplete#custom#var('omni', 'input_patterns', {
""          \ 'tex': g:vimtex#re#deoplete
""          \})

""""""""""""""""""""""""""""""
" VIM-SLIME 
""""""""""""""""""""""""""""""

let g:slime_no_mappings = 1
let g:slime_target = 'tmux'
let g:slime_paste_file = '$HOME/.slime_paste'
let g:slime_python_ipython = 1
xmap <C-c><C-s> <Plug>SlimeRegionSend
nmap <C-c><C-s> <Plug>SlimeParagraphSend


""""""""""""""""""""""""""""""
" FZF-VIM
""""""""""""""""""""""""""""""

let $FZF_DEFAULT_OPTS='--reverse' 
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

""""""""""""""""""""""""""""""
" VIM-TEX 
""""""""""""""""""""""""""""""

let g:tex_flavor='latexmk'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_quickfix_mode=0
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
           \ 'preamble' : {'enabled' : 1},
           \ 'sections' : {'enabled' : 0},
           \ 'envs' : {
           \   'blacklist' : ['figures'],
           \ },
           \}


""""""""""""""""""""""""""""""
" VIM-LATEX-LIVE-PREVIEW 
""""""""""""""""""""""""""""""
let g:livepreview_previewer = 'zathura'
let g:livepreview_use_biber = 1

""""""""""""""""""""""""""""""
" VIMADE
""""""""""""""""""""""""""""""
let g:vimade = {}
let g:vimade.fadelevel = 0.1
let g:vimade.basebg = [75, 75, 75]

""""""""""""""""""""""""""""""
" RNVIMR
""""""""""""""""""""""""""""""

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(1.0 * &columns)),
            \ 'height': float2nr(round(0.42 * &lines)),
            \ 'col': float2nr(round(0.0 * &columns)),
            \ 'row': float2nr(round(0.54 * &lines)),
            \ 'style': 'minimal'
            \ }

""""""""""""""""""""""""""""""
" VIM-FLOATERM
""""""""""""""""""""""""""""""
"let g:user_emmet_mode="n" 
let g:user_emmet_leader_key=','
let g:floaterm_open_command = 'vsplit'

""""""""""""""""""""""""""""""
" VIM-TABLE-MODE
""""""""""""""""""""""""""""""

let g:table_mode_corner = "|"
let g:table_mode_align_char = ":"

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                  " VIM FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" code/string searching tool for multifile exploration
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-o': ':r !echo',
  \ }

function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " KEY REMAPS 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 hi Normal guibg=NONE ctermbg=NONE                    
    let t:is_transparent = 0 
"Toletransparency
let t:is_transparent = 0                     
function! Toggle_transparent_background()                      
  if t:is_transparent == 0                   
"   hi Normal guibg=#111111 ctermbg=black                     
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE                    
    let t:is_transparent = 0                        
  endif                    
endfunction               
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

" Enables ripgrep for file completion via fzf
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

" Maps leader to the spacebar
map <Space> <Leader>

nnoremap   <silent>   <F9>    :FloatermNew --height=0.4 --width=0.98 --wintype=floating --position=bottom --autoclose=2 --title=Terminal<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNew --height=0.4 --width=0.98 --wintype=floating --position=bottom --autoclose=2 --title=Terminal<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F10>    :FloatermNext<CR>
tnoremap   <silent>   <F10>    <C-\><C-n>:FloatermNext<CR>
inoremap   <silent>   <F11>   <C-c>:FloatermToggle<CR>
nnoremap   <silent>   <F11>   :FloatermToggle<CR>
tnoremap   <silent>   <F11>   <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent>   <M-o>   <C-\><C-n><CR>

nnoremap   <C-c><C-c> :FloatermSend<CR>
vnoremap   <C-c><C-c> :FloatermSend<CR>

" Maps easymotion jumps for lines
map <leader><space>l <Plug>(easymotion-bd-jk)
nmap <leader><space>l <Plug>(easymotion-overwin-line)

" Maps easymotion jumps for words
map  <leader><Space>w <Plug>(easymotion-bd-w)
nmap <leader><Space>w <Plug>(easymotion-overwin-w)

" Maps Ranger 
nnoremap <silent> <F7> :RnvimrToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:RnvimrToggle<CR>

" Automatic formatting for Julia files
autocmd FileType julia nnoremap <buffer> <c-f> :JuliaFormatterFormat<cr>

" Maps quit
noremap <leader>q :q<cr>

" Maps quit all  
noremap <c-q> :qa<cr>

" Maps write
nnoremap <leader>w :w<cr>

" Maps ripgrep file searching function
nnoremap <C-g> :Rg<Cr>

" Maps display of current buffers 
nnoremap <C-b> :Buffers<Cr>

" Deselects currently highlighted searches 
nnoremap <Leader><BS> :noh<cr>

" Activates Twiddle case to switch between cases of selected text
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv

map <F8>	:NERDTreeToggle<CR>
map q		:quit<CR>
map <C-s>	:write<CR>





"map <F8>	:NERDTreeToggle<CR>
"map <F9>	:ToggleTerm<CR>
map q		:wq<CR>
map `		:q!<CR>
map <C-s>	:w<CR>
map <C-t>	:tabnew<CR>
map <C-k>	:tabclose<CR>
map <C-Right>	:tabnext<CR>
map <C-Left>	:tabprevious<CR>
map <C-o>	:e ./

noremap  <leader>t  :FloatermToggle<CR>
noremap! <leader>t  <Esc>:FloatermToggle<CR>i
tnoremap <leader>t  <C-\><C-n>:FloatermToggle<CR>
