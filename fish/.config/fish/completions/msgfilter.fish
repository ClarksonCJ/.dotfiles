# msgfilter
# Autogenerated from man page /usr/local/share/man/man1/msgfilter.1
complete -c msgfilter -s i -l input -d 'input PO file'
complete -c msgfilter -s D -l directory -d 'add DIRECTORY to list for input files search '
complete -c msgfilter -s o -l output-file -d 'write output to specified file '
complete -c msgfilter -l newline -d 'add a newline at the end of input and remove a newline from the end of output '
complete -c msgfilter -s e -l expression -d 'add SCRIPT to the commands to be executed'
complete -c msgfilter -s f -l file -d 'add the contents of SCRIPTFILE to the commands to be executed'
complete -c msgfilter -s n -l quiet -l silent -d 'suppress automatic printing of pattern space . SS "Input file syntax:"'
complete -c msgfilter -s P -l properties-input -d 'input file is in Java . properties syntax'
complete -c msgfilter -l stringtable-input -d 'input file is in NeXTstep/GNUstep . strings syntax . SS "Output details:"'
complete -c msgfilter -l color -d 'use colors and other text attributes always'
complete -c msgfilter -l style -d 'specify CSS style rule file for --color'
complete -c msgfilter -l no-escape -d 'do not use C escapes in output (default)'
complete -c msgfilter -s E -l escape -d 'use C escapes in output, no extended chars'
complete -c msgfilter -l force-po -d 'write PO file even if empty'
complete -c msgfilter -l indent -d 'indented output style'
complete -c msgfilter -l keep-header -d 'keep header entry unmodified, don\'t filter it'
complete -c msgfilter -l no-location -d 'suppress \'#: filename:line\' lines'
complete -c msgfilter -l add-location -d 'preserve \'#: filename:line\' lines (default)'
complete -c msgfilter -l strict -d 'strict Uniforum output style'
complete -c msgfilter -s p -l properties-output -d 'write out a Java . properties file'
complete -c msgfilter -l stringtable-output -d 'write out a NeXTstep/GNUstep . strings file'
complete -c msgfilter -s w -l width -d 'set output page width'
complete -c msgfilter -l no-wrap -d 'do not break long message lines, longer than the output page width, into seve…'
complete -c msgfilter -s s -l sort-output -d 'generate sorted output'
complete -c msgfilter -s F -l sort-by-file -d 'sort output by file location . SS "Informative output:"'
complete -c msgfilter -s h -l help -d 'display this help and exit'
complete -c msgfilter -s V -l version -d 'output version information and exit AUTHOR Written by Bruno Haible'

