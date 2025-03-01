# wireshark
# Autogenerated from man page /Applications/Wireshark.app/Contents/Resources/share/man/man1/wireshark.1
complete -c wireshark -s r -d OPTIONS
complete -c wireshark -s a -l autostop -d 'Specify a criterion that specifies when Wireshark is to stop writing to a cap…'
complete -c wireshark -s b -l ring-buffer -d 'Cause Wireshark to run in "multiple files" mode'
complete -c wireshark -s B -l buffer-size -d 'Set capture buffer size (in MiB, default is 2 MiB)'
complete -c wireshark -s c -d 'Set the maximum number of packets to read when capturing live data'
complete -c wireshark -s C -d 'Start with the given configuration profile'
complete -c wireshark -l capture-comment -d 'When performing a capture file from the command line, with the -k flag, add a…'
complete -c wireshark -s d -d 'Like Wireshark\'s Decode As'
complete -c wireshark -s D -l list-interfaces -d 'Print a list of the interfaces on which Wireshark can capture, and exit'
complete -c wireshark -l display -d 'Specifies the X display to use.   A hostname and screen (otherhost:0'
complete -c wireshark -l disable-protocol -d 'Disable dissection of proto_name'
complete -c wireshark -l disable-heuristic -d 'Disable dissection of heuristic protocol'
complete -c wireshark -l enable-protocol -d 'Enable dissection of proto_name'
complete -c wireshark -l enable-heuristic -d 'Enable dissection of heuristic protocol'
complete -c wireshark -s f -d 'Set the capture filter expression'
complete -c wireshark -l fullscreen -d 'Start Wireshark in full screen mode (kiosk mode)'
complete -c wireshark -s g -d 'After reading in a capture file using the -r flag, go to the given packet num…'
complete -c wireshark -s h -l help -d 'Print the version number and options and exit'
complete -c wireshark -s H -d 'Hide the capture info dialog during live packet capture'
complete -c wireshark -s i -l interface -d 'Set the name of the network interface or pipe to use for live packet capture'
complete -c wireshark -s I -l monitor-mode -d 'Put the interface in "monitor mode"; this is supported only on IEEE 802'
complete -c wireshark -s j -d 'Use after -J to change the behavior when no exact match is found for the filt…'
complete -c wireshark -s J -d 'After reading in a capture file using the -r flag, jump to the packet matchin…'
complete -c wireshark -s k -d 'Start the capture session immediately'
complete -c wireshark -s K -d 'Load kerberos crypto keys from the specified keytab file'
complete -c wireshark -s l -d 'Turn on automatic scrolling if the packet display is being updated automatica…'
complete -c wireshark -s S
complete -c wireshark -s L -l list-data-link-types -d 'List the data link types supported by the interface and exit'
complete -c wireshark -l list-time-stamp-types -d 'List time stamp types supported for the interface'
complete -c wireshark -s n -d 'Disable network object name resolution (such as hostname, TCP and UDP port na…'
complete -c wireshark -s N -d 'Turn on name resolving only for particular types of addresses and port number…'
complete -c wireshark -s o -d 'Set a preference or recent value, overriding the default value and any value …'
complete -c wireshark -s P -s T
complete -c wireshark -s p -l no-promiscuous-mode -d 'Don\'t put the interface into promiscuous mode'
complete -c wireshark -l read-file -d 'Read packet data from infile, can be any supported capture file format (inclu…'
complete -c wireshark -s R -l read-filter -d 'When reading a capture file specified with the -r flag, causes the specified …'
complete -c wireshark -s s -l snapshot-length -d 'Set the default snapshot length to use when capturing live data'
complete -c wireshark -s t -d 'Set the format of the packet timestamp displayed in the packet list window'
complete -c wireshark -l temp-dir -d 'Specifies the directory into which temporary files (including capture files) …'
complete -c wireshark -l time-stamp-type -d 'Change the interface\'s timestamp method.  See --list-time-stamp-types'
complete -c wireshark -s u -d 'Output format of seconds (def: s: seconds)'
complete -c wireshark -s v -l version -d 'Print the full version information and exit'
complete -c wireshark -s w -d 'Set the default capture file name, or \\- for standard output'
complete -c wireshark -s X -d 'Specify an option to be passed to an Wireshark module'
complete -c wireshark -s y -l linktype -d 'If a capture is started from the command line with -k, set the data link type…'
complete -c wireshark -s Y -l display-filter -d 'Start with the given display filter'
complete -c wireshark -s z -d 'Get Wireshark to collect various types of statistics and display the result i…'
complete -c wireshark -l log-level
complete -c wireshark -l log-fatal
complete -c wireshark -l log-domains
complete -c wireshark -l log-debug
complete -c wireshark -l log-noisy
complete -c wireshark -l log-file
complete -c wireshark -l '------------------------------------------------>' -d ' 500   1500   500  750   1000   500    0     0 Statistics > Conversation List…'

