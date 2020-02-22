" ssh now supports includes
au BufNewFile,BufRead *.ssh/hosts.d/* setf sshconfig
au BufNewFile,BufRead *.ssh/config.local setf sshconfig
