let s:invalid = 0
let s:empty = 1
let s:nonempty = 2

function! targets#state#new(state)
    return {
        \ 'state': a:state,
        \
        \ 'isValid': function('targets#state#isValid'),
        \ 'isInvalid': function('targets#state#isInvalid'),
        \ }
endfunction

function! targets#state#invalid()
    return targets#state#new(s:invalid)
endfunction

function! targets#state#nonempty()
    return targets#state#new(s:nonempty)
endfunction

function! targets#state#empty()
    return targets#state#new(s:empty)
endfunction

function! targets#state#isValid() dict
    return self.state != s:invalid
endfunction

function! targets#state#isInvalid() dict
    return self.state == s:invalid
endfunction
