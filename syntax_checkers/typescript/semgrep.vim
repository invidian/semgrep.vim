if exists('g:loaded_syntastic_typescript_semgrep_checker')
    finish
endif
let g:loaded_syntastic_typescript_semgrep_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'typescript',
    \ 'name': 'semgrep',
    \ 'redirect': 'python/semgrep'})
