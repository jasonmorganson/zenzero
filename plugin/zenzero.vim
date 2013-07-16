
function! ZeroMode()
    set nospell
    set nonumber norelativenumber
    set foldcolumn=0
    highlight! OverLength ctermbg=none guibg=none
    highlight IndentGuidesOdd ctermbg=none
    highlight IndentGuidesEven ctermbg=none
    highlight! link FoldColumn Normal
    highlight! link ColorColumn Normal
    autocmd InsertEnter * :set nonumber
    autocmd InsertLeave * :set norelativenumber
    :QuickfixsignsDisable
endfunction

command! -nargs=* Zero call ZeroMode()

function! ZenMode()
    set spell wrap autoindent linebreak
    set nonumber norelativenumber nolist nocursorline
    set textwidth=0 foldcolumn=0 wrapmargin=0 laststatus=0
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
    silent !tmux set status off
endfunction

command! -nargs=* Zen call ZenMode()