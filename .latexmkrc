$pdf_mode = 5; # Use xelatex
$postscript_mode = $dvi_mode = 0;

# Dependencies
$makeindex = 'makeindex -s nomencl.ist -o %D %S';
$pdflatex = 'xelatex %O %S';

# Clean up extensions
$clean_ext = 'bbl nav out snm xdv synctex.gz nlo nls ilg ind glo gls glg';
