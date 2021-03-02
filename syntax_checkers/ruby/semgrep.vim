if exists('g:loaded_syntastic_ruby_semgrep_checker')
    finish
endif
let g:loaded_syntastic_ruby_semgrep_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'ruby',
    \ 'name': 'semgrep',
    \ 'redirect': 'python/semgrep'})
