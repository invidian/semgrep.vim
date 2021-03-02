if exists('g:loaded_syntastic_javascript_semgrep_checker')
    finish
endif
let g:loaded_syntastic_javascript_semgrep_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'javascript',
    \ 'name': 'semgrep',
    \ 'redirect': 'python/semgrep'})
