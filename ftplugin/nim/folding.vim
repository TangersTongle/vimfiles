setlocal foldmethod=expr
setlocal foldexpr=GetNimFold(v:lnum)

function! GetNimFold(lnum)
    "If it's a blank line
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif

endfunction

function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:;num + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif
    endwhile

    return -2
endfunction

