if exists('g:loaded_syntastic_java_semgrep_checker')
    finish
endif
let g:loaded_syntastic_java_semgrep_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'java',
    \ 'name': 'semgrep',
    \ 'redirect': 'python/semgrep'})
