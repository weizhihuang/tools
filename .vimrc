set bg=dark
set nu
set cul
set ts=4
set sw=4
set et
set si
set fo+=r
no # I# <Esc>hj
no // I// <Esc>hj
ino (( ()<Esc>i
ino " ""<Esc>i
ino ' ''<Esc>i
ino [ []<Esc>i
ino {<CR> {<CR>}<Esc>ko
ino <Space>// <Space>//<Space>
hi LineNr cterm=bold ctermfg=DarkGrey
hi CursorLineNr cterm=bold ctermfg=LightCyan

hi TrailingWhitespace ctermbg=red
mat TrailingWhitespace /\s\+$/
