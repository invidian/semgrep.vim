if exists('g:loaded_syntastic_go_semgrep_checker')
    finish
endif
let g:loaded_syntastic_go_semgrep_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'go',
    \ 'name': 'semgrep',
    \ 'redirect': 'python/semgrep'})
