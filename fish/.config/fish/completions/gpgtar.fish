# gpgtar
# Autogenerated from man page /usr/local/MacGPG2/share/man/man1/gpgtar.1
complete -c gpgtar -l create -d 'Put given files and directories into a vanilla ``ustar\'\' archive'
complete -c gpgtar -l extract -d 'Extract all files from a vanilla ``ustar\'\' archive'
complete -c gpgtar -l encrypt -d 'TQ   -e Encrypt given files and directories into an archive'
complete -c gpgtar -l decrypt -d 'TQ   -d Extract all files from an encrypted archive'
complete -c gpgtar -l sign -d 'TQ   -s Make a signed archive from the given files and directories'
complete -c gpgtar -l list-archive -d 'TQ   -t List the contents of the specified archive'
complete -c gpgtar -l symmetric -d 'TQ   -c Encrypt with a symmetric cipher using a passphrase'
complete -c gpgtar -l recipient -d 'TQ   -r user Encrypt for user id user.  For details see gpg'
complete -c gpgtar -l local-user -d 'TQ   -u user Use user as the key to sign with.   For details see gpg'
complete -c gpgtar -l output -d 'TQ   -o file Write the archive to the specified file file'
complete -c gpgtar -l verbose -d 'TQ   -v Enable extra informational output'
complete -c gpgtar -l quiet -d 'TQ   -q Try to be as quiet as possible'
complete -c gpgtar -l skip-crypto -d 'Skip all crypto operations and create or extract vanilla ``ustar\'\' archives'
complete -c gpgtar -l dry-run -d 'Do not actually output the extracted files'
complete -c gpgtar -l directory -d 'TQ   -C dir Extract the files into the directory dir'
complete -c gpgtar -l files-from -d 'TQ   -T file Take the file names to work from the file file; one file per line'
complete -c gpgtar -l null -d 'Modify option --files-from to use a binary nul instead of a linefeed to separ…'
complete -c gpgtar -l utf8-strings -d 'Assume that the file names read by --files-from are UTF-8 encoded'
complete -c gpgtar -l openpgp -d 'This option has no effect because OpenPGP encryption and signing is the defau…'
complete -c gpgtar -l cms -d 'This option is reserved and shall not be used'
complete -c gpgtar -l batch -d 'Use batch mode.   Never ask but use the default action'
complete -c gpgtar -l yes -d 'Assume "yes" on most questions'
complete -c gpgtar -l no -d 'Assume "no" on most questions.   This option is passed directly to gpg'
complete -c gpgtar -l require-compliance -d 'This option is passed directly to gpg'
complete -c gpgtar -l status-fd -d 'Write special status strings to the file descriptor n'
complete -c gpgtar -l with-log -d 'When extracting an encrypted tarball also write a log file with the gpg outpu…'
complete -c gpgtar -l set-filename -d 'Use the last component of file as the output directory'
complete -c gpgtar -l gpg -d 'Use the specified command gpgcmd instead of gpg'
complete -c gpgtar -l gpg-args -d 'Pass the specified extra options to gpg'
complete -c gpgtar -l tar-args -d 'Assume args are standard options of the command tar and parse them'
complete -c gpgtar -l version -d 'Print version of the program and exit'
complete -c gpgtar -s e -d 'Encrypt given files and directories into an archive'
complete -c gpgtar -s d -d 'Extract all files from an encrypted archive'
complete -c gpgtar -s s -d 'Make a signed archive from the given files and directories'
complete -c gpgtar -s t -d 'List the contents of the specified archive'
complete -c gpgtar -s c -d 'Encrypt with a symmetric cipher using a passphrase'
complete -c gpgtar -l cipher-algo
complete -c gpgtar -s r -d 'Encrypt for user id user.  For details see gpg'
complete -c gpgtar -s u -d 'Use user as the key to sign with.   For details see gpg'
complete -c gpgtar -s o -d 'Write the archive to the specified file file'
complete -c gpgtar -s v -d 'Enable extra informational output'
complete -c gpgtar -s q -d 'Try to be as quiet as possible'
complete -c gpgtar -s C -d 'Extract the files into the directory dir'
complete -c gpgtar -s T -d 'Take the file names to work from the file file; one file per line'
complete -c gpgtar -l help -d 'Display a brief help page and exit.  EXAMPLES'

