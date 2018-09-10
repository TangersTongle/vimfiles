"Nim stuff
au BufNewFile,BufRead *.nim,*.nimble set filetype=nim
call neomake#configure#automake('rw', 1000)
