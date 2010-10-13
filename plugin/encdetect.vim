function SetEncoding(f)
    let e = system('enca -Pe "'. a:f .'"')
    let e = substitute(e, '/.*', '', '')
    if e =~ 'unknown' || e =~ 'ASCII'
        execute("set fileencodings=utf-8")
    else
        execute("set fileencodings=". e)
    endif
endfunction
