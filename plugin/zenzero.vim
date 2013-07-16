
function! ZeroMode()
    set nospell
    set nonumber norelativenumber
    set foldcolumn=0
    set showbreak=\ \
    set gcr=a:blinkon0              "Disable cursor blink
    highlight! OverLength ctermbg=none guibg=none
    highlight IndentGuidesOdd ctermbg=none
    highlight IndentGuidesEven ctermbg=none
    highlight! link FoldColumn Normal
    highlight! link ColorColumn Normal
    autocmd InsertEnter * :set nonumber
    autocmd InsertLeave * :set norelativenumber
    :QuickfixsignsDisable
    :ShowTrailingWhitespaceOff
endfunction

command! -nargs=* Zero call ZeroMode()

function! ZenMode()
    set spell wrap autoindent linebreak
    set nonumber norelativenumber noruler nolist nocursorline
    set textwidth=0 foldcolumn=0 wrapmargin=0 laststatus=0
    set showbreak=\ \
    set gcr=a:blinkon0              "Disable cursor blink
    highlight NonText ctermfg=233 ctermbg=none
    highlight! OverLength ctermbg=none guibg=none
    highlight IndentGuidesOdd ctermbg=none
    highlight IndentGuidesEven ctermbg=none
    highlight! link FoldColumn Normal
    highlight! link ColorColumn Normal
    autocmd InsertEnter * :set nonumber
    autocmd InsertLeave * :set norelativenumber
    :UniCycleOn
    :QuickfixsignsDisable
    :ShowTrailingWhitespaceOff
    "silent !tmux set status off
endfunction

command! -nargs=* Zen call ZenMode()
