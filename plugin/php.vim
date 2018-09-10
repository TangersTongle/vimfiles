""""""""""""""""""""""""""""""
" => Remaps a custom key to NOP
"""""""""""""""""""""""""""""""

au FileType,BufRead,BufNewFile,BufCreate *.php inoremap <leader>i <% if X %>
au FileType,BufRead,BufNewFile,BufCreate *.php inoremap <leader>e <% end_if %>

