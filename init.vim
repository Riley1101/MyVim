call plug#begin('~/.vim/plugged')
 Plug 'SirVer/ultisnips'
 Plug 'Mofiqul/dracula.nvim'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'scrooloose/nerdtree'
 Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
 Plug 'kyazdani42/nvim-tree.lua'
 let g:NERDTreeShowHidden = 1
 let g:NERDTreeMinimalUI = 1
 let g:NERDTreeIgnore = []
 let g:NERDTreeStatusline = ''
 " Automaticaly close nvim if NERDTree is only thing left open
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
 " Toggle
 nnoremap <silent> <C-b> :NERDTreeToggle<CR>
 " open new split panes to right and below
 set splitright
 set splitbelow
 " turn terminal to normal mode with escape
 tnoremap <Esc> <C-\><C-n>
 " start terminal in insert mode
 au BufEnter * if &buftype == 'terminal' | :startinsert | endif
 " open terminal on ctrl+n
 function! OpenTerminal()
   split term://bash
   resize 10
 endfunction
 nnoremap <c-n> :call OpenTerminal()<CR>
 "use alt+hjkl to move between split/vsplit panels
 tnoremap <A-h> <C-\><C-n><C-w>h
 tnoremap <A-j> <C-\><C-n><C-w>j
 tnoremap <A-k> <C-\><C-n><C-w>k
 tnoremap <A-l> <C-\><C-n><C-w>l
 nnoremap <A-h> <C-w>h
 nnoremap <A-j> <C-w>j
 nnoremap <A-k> <C-w>k
 nnoremap <A-l> <C-w>l
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 nnoremap <C-p> :FZF<CR>
 let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
 let $FZF_DEFAULT_COMMAND = 'ag -g ""'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
 Plug 'leafgarland/typescript-vim'
 Plug 'peitalin/vim-jsx-typescript'
 set encoding=UTF-8
 Plug 'jiangmiao/auto-pairs'
 Plug 'evanleck/vim-svelte'
 Plug 'pangloss/vim-javascript'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
 Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()
