if exists('g:loaded_syntastic_python_semgrep_checker')
    finish
endif
let g:loaded_syntastic_python_semgrep_checker = 1

let s:default_args = {
    \ 'python': "--lang python",
    \ 'javascript': "--lang javascript",
    \ 'ruby': "--lang ruby" }

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_python_semgrep_GetLocList() dict
    let makeprg = self.makeprgBuild({
                \ 'args': get(s:default_args, self.getFiletype(), '') . " --pattern '$X == $X'",
                \ 'args_after': '--no-rewrite-rule-ids --quiet --vim' })

    let errorformat = '%f:%l:%c:%t:%m'

    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
            \ 'filetype': 'python',
            \ 'name': 'semgrep' })

let &cpo = s:save_cpo
unlet s:save_cpo
