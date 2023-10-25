# ginstall
# Autogenerated from man page /usr/local/share/man/man1/ginstall.1
complete -c ginstall -l backup -d 'make a backup of each existing destination file'
complete -c ginstall -s b -d 'like --backup but does not accept an argument'
complete -c ginstall -s c -d '(ignored)'
complete -c ginstall -s C -l compare -d 'compare content of source and destination files, and if no change to content,…'
complete -c ginstall -s d -l directory -d 'treat all arguments as directory names; create all components of the specifie…'
complete -c ginstall -s D -d 'create all leading components of DEST except the last, or all components of -…'
complete -c ginstall -l debug -d 'explain how a file is copied.   Implies -v'
complete -c ginstall -s g -l group -d 'set group ownership, instead of process\' current group'
complete -c ginstall -s m -l mode -d 'set permission mode (as in chmod), instead of rwxr-xr-x'
complete -c ginstall -s o -l owner -d 'set ownership (super-user only)'
complete -c ginstall -s p -l preserve-timestamps -d 'apply access/modification times of SOURCE files to corresponding destination …'
complete -c ginstall -s s -l strip -d 'strip symbol tables'
complete -c ginstall -l strip-program -d 'program used to strip binaries'
complete -c ginstall -s S -l suffix -d 'override the usual backup suffix'
complete -c ginstall -s t -l target-directory -d 'copy all SOURCE arguments into DIRECTORY'
complete -c ginstall -s T -l no-target-directory -d 'treat DEST as a normal file'
complete -c ginstall -s v -l verbose -d 'print the name of each created file or directory'
complete -c ginstall -l preserve-context -d 'preserve SELinux security context'
complete -c ginstall -s Z -d 'set SELinux security context of destination file and each created directory t…'
complete -c ginstall -l context -d 'like -Z, or if CTX is specified then set the SELinux or SMACK security contex…'
complete -c ginstall -l help -d 'display this help and exit'
complete -c ginstall -l version -d 'output version information and exit '

