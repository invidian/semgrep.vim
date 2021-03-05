# semgrep.vim

Semgrep external checker for Syntastic.

## Installing

```
$ git clone https://github.com/returntocorp/semgrep.vim.git
```

```
$ cp -R semgrep.vim ~/.vim/bundle/
```

## Configuring

Add the plugin in your `.vimrc` file:

```
Plugin 'file://~/.vim/bundle/semgrep.vim'
```

Enable the Semgrep checker on specific languages:

```
let g:syntastic_<filetype>_checkers = ['semgrep']
```

E.g.

```
let g:syntastic_python_checkers = ['semgrep']
let g:syntastic_java_checkers = ['semgrep']
```

To use a specific configuration, use checker arguments:

```
let g:syntastic_<filetype>_semgrep_args = '--config /path/to/config.yaml'
```

E.g.

```
let g:syntastic_python_semgrep_args = '--config /path/to/python.yaml'
let g:syntastic_java_semgrep_args = '--config /path/to/java.yaml'
```
