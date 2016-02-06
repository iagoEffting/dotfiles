" ==== Indentation ====
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" ==== PHP QA Tools ====
" Set the codesniffer args
let g:phpqa_codesniffer_args = "--standard=Zend"

"  PHP executable (default = "php")
" let g:phpqa_php_cmd='/usr/bin/php'

" PHP Code Sniffer binary (default = "phpcs")
" let g:phpqa_codesniffer_cmd='/path/to/phpcs'

" Run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 1

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 0

" Location list opening automatically
let g:phpqa_open_loc = 1
