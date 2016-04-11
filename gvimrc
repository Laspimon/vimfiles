:autocmd FileType text        set spell
:autocmd FileType tex         set spell
                                                                " :help statusline
:set statusline=%<%f               " Path to the file in the buffer, as typed or relative to current directory
:set statusline+=\                 "
:set statusline+=FileType:         " Label
:set statusline+=%y                " Type of file in the buffer, e.g., "[vim]".  See 'filetype'.
:set statusline+=%m                " Modified flag, text is "[+]"; "[-]" if 'modifiable' is off.
:set statusline+=%r                " Readonly flag, text is "[RO]".
:set statusline+=\                 "

:set statusline+=%=                " Align right

:set statusline+=%l                " Line number.
:set statusline+=,                 "
:set statusline+=%c                " Column number.
:set statusline+=%V                " Virtual column number as -{num}.  Not displayed if equal to 'c'.
:set statusline+=\ /\              " Separator
:set statusline+=%L                " Number of lines in buffer.
:set statusline+=\                 "
:set statusline+=lines:            "
:set statusline+=%P                "
