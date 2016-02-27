execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

set encoding=utf8
set termencoding=utf8

colorscheme onedark
let g:onedark_termcolors=16

let g:airline_powerline_fonts=1
let g:airline_enable_fugitive=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='onedark'

let g:vim_markdown_folding_disabled=1

set exrc " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
set number
set wrap!
set expandtab
set autoindent
set cindent
set smartindent
set nofoldenable
set tabstop=2
set shiftwidth=2
set pastetoggle=<F2>
set encoding=utf-8
set noswapfile
set backspace=indent,eol,start
set hlsearch
set incsearch
set listchars=tab:▶\ ,eol:¬,trail:·,nbsp:·,extends:→,precedes:←

set laststatus=2

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

let g:ctrlp_by_filename = 0
let g:ctrlp_switch_buffer = 0

nnoremap <silent> <C-^> :bn<CR>
nnoremap <silent> <leader>w :bw<CR>
nnoremap <silent> <C-s> :update<CR>
nnoremap <silent> <leader>l :set list!<CR>

autocmd BufNewFile,BufRead {Gemfile,Vagrantfile,Berksfile} set filetype=ruby

function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle=3
set autochdir

let g:jsx_ext_required = 0
