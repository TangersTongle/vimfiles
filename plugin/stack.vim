""""""""""""""""""""""""""""""
" => Stack settings
""""""""""""""""""""""""""""""

au BufNewFile, BufRead *.html, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])


