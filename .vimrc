se bg=dark
se nu
se cul
se ts=4
se sw=4
se et
se si
se fo+=r
no # I# <Esc>hj
no // I// <Esc>hj
ino '' ''<Esc>i
ino "" ""<Esc>i
ino (( ()<Esc>i
ino [[ []<Esc>i
ino {{ {}<Esc>i
ino {<CR> {<CR>}<Esc>ko
hi LineNr cterm=bold ctermfg=DarkGrey
hi CursorLineNr cterm=bold ctermfg=LightCyan

se list
se lcs=tab:▸·

hi TrailingWhitespace ctermbg=red
mat TrailingWhitespace /\s\+$/

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au filetype yaml setl ts=2 sw=2
au filetype json setl ci
