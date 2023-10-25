# gln
# Autogenerated from man page /usr/local/share/man/man1/gln.1
complete -c gln -l backup -d 'make a backup of each existing destination file'
complete -c gln -s b -d 'like --backup but does not accept an argument'
complete -c gln -s d -s F -l directory -d 'allow the superuser to attempt to hard link directories (note: will probably …'
complete -c gln -s f -l force -d 'remove existing destination files'
complete -c gln -s i -l interactive -d 'prompt whether to remove destinations'
complete -c gln -s L -l logical -d 'dereference TARGETs that are symbolic links'
complete -c gln -s n -l no-dereference -d 'treat LINK_NAME as a normal file if it is a symbolic link to a directory'
complete -c gln -s P -l physical -d 'make hard links directly to symbolic links'
complete -c gln -s r -l relative -d 'with -s, create links relative to link location'
complete -c gln -s s -l symbolic -d 'make symbolic links instead of hard links'
complete -c gln -s S -l suffix -d 'override the usual backup suffix'
complete -c gln -s t -l target-directory -d 'specify the DIRECTORY in which to create the links'
complete -c gln -s T -l no-target-directory -d 'treat LINK_NAME as a normal file always'
complete -c gln -s v -l verbose -d 'print name of each linked file'
complete -c gln -l help -d 'display this help and exit'
complete -c gln -l version -d 'output version information and exit '

