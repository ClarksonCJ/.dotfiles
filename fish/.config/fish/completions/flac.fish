# flac
# Autogenerated from man page /usr/local/share/man/man1/flac.1
complete -c flac -l 'version\\f' -d 'Show the flac version number'
complete -c flac -l 'help\\f' -d 'Show basic usage and a list of all options'
complete -c flac -l 'explain\\f' -d 'Show detailed explanation of usage and all options'
complete -c flac -l 'decode\\f' -d 'Decode (the default behavior is to encode)'
complete -c flac -l 'test\\f' -d 'Test a flac encoded file (same as -d except no decoded file is written)'
complete -c flac -l 'analyze\\f' -d 'Analyze a FLAC encoded file (same as -d except an analysis file is written)'
complete -c flac -l 'stdout\\f' -d 'Write output to stdout'
complete -c flac -l 'silent\\f' -d 'Silent mode (do not write runtime encode/decode statistics to stderr)'
complete -c flac -l 'warnings-as-errors\\f' -d 'Treat all warnings as errors (which cause flac to terminate with a non-zero e…'
complete -c flac -l 'force\\f' -d 'Force overwriting of output files'
complete -c flac -l output-name -d 'Force the output file name (usually flac just changes the extension)'
complete -c flac -l 'decode-through-errors\\f' -d 'By default flac stops decoding with an error and removes the partially decode…'
complete -c flac -l 'verify\\f' -d 'Verify a correct encoding by decoding the output in parallel and comparing to…'
complete -c flac -l seekpoint -d 'Include a point or points in a SEEKTABLE'
complete -c flac -l padding -d 'Tell the encoder to write a PADDING metadata block of the given length (in by…'
complete -c flac -l tag -d 'Add a FLAC tag.  The comment must adhere to the Vorbis comment spec; i. e'
complete -c flac -l blocksize -d 'Specify the blocksize in samples.  The default is 1152 for -l 0, else 4096'
complete -c flac -l 'mid-side\\f' -d 'Try mid-side coding for each frame (stereo input only)'
complete -c flac -l 'adaptive-mid-side\\f' -d 'Adaptive mid-side coding for all frames (stereo input only)'
complete -c flac -l 'compression-level-0..--compression-level-8\\f' -d 'Fastest compression. highest compression (default is -5)'
complete -c flac -l 'compression-level-0\\f' -d 'Synonymous with -l 0 -b 1152 -r 3 --no-mid-side'
complete -c flac -l 'compression-level-1\\f' -d 'Synonymous with -l 0 -b 1152 -M -r 3'
complete -c flac -l 'compression-level-2\\f' -d 'Synonymous with -l 0 -b 1152 -m -r 3'
complete -c flac -l 'compression-level-3\\f' -d 'Synonymous with -l 6 -b 4096 -r 4 --no-mid-side'
complete -c flac -l 'compression-level-4\\f' -d 'Synonymous with -l 8 -b 4096 -M -r 4'
complete -c flac -l 'compression-level-5\\f' -d 'Synonymous with -l 8 -b 4096 -m -r 5'
complete -c flac -l 'compression-level-6\\f' -d 'Synonymous with -l 8 -b 4096 -m -r 6 -A subdivide_tukey(2)'
complete -c flac -l 'compression-level-7\\f' -d 'Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(2)'
complete -c flac -l 'compression-level-8\\f' -d 'Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(3)'
complete -c flac -l 'exhaustive-model-search\\f' -d 'Do exhaustive model search (expensive!)'
complete -c flac -l apodization -d 'Window audio data with given the apodization function'
complete -c flac -l max-lpc-order -d 'Specifies the maximum LPC order.  This number must be <= 32'
complete -c flac -l 'qlp-coeff-precision-search\\f' -d 'Do exhaustive search of LP coefficient quantization (expensive!)'
complete -c flac -l qlp-coeff-precision -d 'Precision of the quantized linear-predictor coefficients, 0 => let encoder de…'
complete -c flac -l rice-partition-order -d 'Set the [min,]max residual partition order (0. 15)'
complete -c flac -s 8 -d 'actually are just synonyms for different groups of specific encoding options …'
complete -c flac -s d -s a -s t -d 'Depending on which way is chosen, encoding, decoding, analysis or testing opt…'
complete -c flac -s v -l version -d 'Show the flac version number'
complete -c flac -s h -l help -d 'Show basic usage and a list of all options'
complete -c flac -s H -l explain -d 'Show detailed explanation of usage and all options'
complete -c flac -l decode -d 'Decode (the default behavior is to encode)'
complete -c flac -l test -d 'Test a flac encoded file (same as -d except no decoded file is written)'
complete -c flac -l analyze -d 'Analyze a FLAC encoded file (same as -d except an analysis file is written)'
complete -c flac -s c -l stdout -d 'Write output to stdout'
complete -c flac -s s -l silent -d 'Silent mode (do not write runtime encode/decode statistics to stderr)'
complete -c flac -l totally-silent -d 'Do not print anything of any kind, including warnings or errors'
complete -c flac -l no-utf8-convert -d 'Do not convert tags from local charset to UTF-8'
complete -c flac -s w -l warnings-as-errors -d 'Treat all warnings as errors (which cause flac to terminate with a non-zero e…'
complete -c flac -s f -l force -d 'Force overwriting of output files'
complete -c flac -s o -d 'Force the output file name (usually flac just changes the extension)'
complete -c flac -l output-prefix -d 'Prefix each output file name with the given string'
complete -c flac -l delete-input-file -d 'Automatically delete the input file after a successful encode or decode'
complete -c flac -l preserve-modtime -d 'Output files have their timestamps/permissions set to match those of their in…'
complete -c flac -l keep-foreign-metadata -d 'If encoding, save WAVE, RF64, or AIFF non-audio chunks in FLAC metadata'
complete -c flac -l keep-foreign-metadata-if-present -d 'Like --keep-foreign-metadata, but without throwing an error if foreign metada…'
complete -c flac -l skip -d 'Skip over the first number of samples of the input'
complete -c flac -l until -o ']mm:ss.ss' -d 'Stop at the given sample number for each input file'
complete -c flac -l ogg -d 'When encoding, generate Ogg FLAC output instead of native FLAC'
complete -c flac -l serial-number -d 'When used with --ogg, specifies the serial number to use for the first Ogg FL…'
complete -c flac -l residual-text -d 'Includes the residual signal in the analysis file'
complete -c flac -l residual-gnuplot -d 'Generates a gnuplot file for every subframe; each file will contain the resid…'
complete -c flac -l cue -d 'Set the beginning and ending cuepoints to decode.  The optional first #'
complete -c flac -s F -l decode-through-errors -d 'By default flac stops decoding with an error and removes the partially decode…'
complete -c flac -l apply-replaygain-which-is-not-lossless -d 'Applies ReplayGain values while decoding.  WARNING: THIS IS NOT LOSSLESS'
complete -c flac -s V -l verify -d 'Verify a correct encoding by decoding the output in parallel and comparing to…'
complete -c flac -l lax -d 'Allow encoder to generate non-Subset files'
complete -c flac -l replay-gain -d 'Calculate ReplayGain values and store them as FLAC tags, similar to vorbisgain'
complete -c flac -l cuesheet -d 'Import the given cuesheet file and store it in a CUESHEET metadata block'
complete -c flac -l picture -d 'Import a picture and store it in a PICTURE metadata block'
complete -c flac -l ignore-chunk-sizes -d 'When encoding to flac, ignore the file size headers in WAV and AIFF files to …'
complete -c flac -s S -d 'Include a point or points in a SEEKTABLE'
complete -c flac -s P -d 'Tell the encoder to write a PADDING metadata block of the given length (in by…'
complete -c flac -s T -d 'Add a FLAC tag.  The comment must adhere to the Vorbis comment spec; i. e'
complete -c flac -l tag-from-file -d 'Like --tag, except FILENAME is a file whose contents will be read verbatim to…'
complete -c flac -s b -d 'Specify the blocksize in samples.  The default is 1152 for -l 0, else 4096'
complete -c flac -s m -l mid-side -d 'Try mid-side coding for each frame (stereo input only)'
complete -c flac -s M -l adaptive-mid-side -d 'Adaptive mid-side coding for all frames (stereo input only)'
complete -c flac -o '0..-8' -l 'compression-level-0..--compression-level-8' -d 'Fastest compression. highest compression (default is -5)'
complete -c flac -s 0 -l compression-level-0 -d 'Synonymous with -l 0 -b 1152 -r 3 --no-mid-side'
complete -c flac -s 1 -l compression-level-1 -d 'Synonymous with -l 0 -b 1152 -M -r 3'
complete -c flac -s 2 -l compression-level-2 -d 'Synonymous with -l 0 -b 1152 -m -r 3'
complete -c flac -s 3 -l compression-level-3 -d 'Synonymous with -l 6 -b 4096 -r 4 --no-mid-side'
complete -c flac -s 4 -l compression-level-4 -d 'Synonymous with -l 8 -b 4096 -M -r 4'
complete -c flac -s 5 -l compression-level-5 -d 'Synonymous with -l 8 -b 4096 -m -r 5'
complete -c flac -s 6 -l compression-level-6 -d 'Synonymous with -l 8 -b 4096 -m -r 6 -A subdivide_tukey(2)'
complete -c flac -s 7 -l compression-level-7 -d 'Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(2)'
complete -c flac -l compression-level-8 -d 'Synonymous with -l 12 -b 4096 -m -r 6 -A subdivide_tukey(3)'
complete -c flac -l fast -d 'Fastest compression.  Currently synonymous with -0'
complete -c flac -l best -d 'Highest compression.  Currently synonymous with -8'
complete -c flac -s e -l exhaustive-model-search -d 'Do exhaustive model search (expensive!)'
complete -c flac -s A -d 'Window audio data with given the apodization function'
complete -c flac -s l -d 'Specifies the maximum LPC order.  This number must be <= 32'
complete -c flac -s p -l qlp-coeff-precision-search -d 'Do exhaustive search of LP coefficient quantization (expensive!)'
complete -c flac -s q -d 'Precision of the quantized linear-predictor coefficients, 0 => let encoder de…'
complete -c flac -s r -d 'Set the [min,]max residual partition order (0. 15)'
complete -c flac -l endian -d 'Set the byte order for samples'
complete -c flac -l channels -d 'Set number of channels'
complete -c flac -l bps -d 'Set bits per sample'
complete -c flac -l sample-rate -d 'Set sample rate (in Hz)'
complete -c flac -l sign -d 'Set the sign of samples'
complete -c flac -l input-size -d 'Specify the size of the raw input in bytes'
complete -c flac -l force-raw-format -d 'Force input (when encoding) or output (when decoding) to be treated as raw sa…'
complete -c flac -l force-aiff-format
complete -c flac -l force-rf64-format
complete -c flac -l force-wave64-format -d 'AIFF/RF64/WAVE64 format respectively'
complete -c flac -l force-legacy-wave-format
complete -c flac -l force-extensible-wave-format -d 'output a WAVE file with WAVE_FORMAT_PCM and WAVE_FORMAT_EXTENSIBLE respective…'
complete -c flac -l force-aiff-c-none-format
complete -c flac -l force-aiff-c-sowt-format -d 'AIFF-C file with format NONE and sowt respectively.  NEGATIVE OPTIONS'
complete -c flac -l no-adaptive-mid-side
complete -c flac -l no-cued-seekpoints
complete -c flac -l no-decode-through-errors
complete -c flac -l no-delete-input-file
complete -c flac -l no-preserve-modtime
complete -c flac -l no-keep-foreign-metadata
complete -c flac -l no-exhaustive-model-search
complete -c flac -l no-force
complete -c flac -l no-lax
complete -c flac -l no-mid-side
complete -c flac -l no-ogg
complete -c flac -l no-padding
complete -c flac -l no-qlp-coeff-prec-search
complete -c flac -l no-replay-gain
complete -c flac -l no-residual-gnuplot
complete -c flac -l no-residual-text
complete -c flac -l no-seektable
complete -c flac -l no-silent
complete -c flac -l no-verify
complete -c flac -l no-warnings-as-errors

