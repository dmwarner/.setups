execute pathogen#infect()

set background=dark
colorscheme slate
syntax on
set number

set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

set clipboard+=unnamed

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre     *.* :call TrimWhiteSpace()

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

command SpecIt :execute "split" substitute(expand('%:r').'Spec.groovy', 'main', 'test', 'g')


