$pdf_mode = 5; # Use xelatex
$postscript_mode = $dvi_mode = 0;

$pdflatex = 'xelatex %O %S';

# Nomenclature configuration
add_cus_dep('nlo', 'nls', 0, 'nomencl');
sub nomencl {
    system("makeindex -s nomencl.ist -o '$_[0].nls' '$_[0].nlo'");
}

# Glossary configuration
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
sub makeglossaries {
    system("makeglossaries '$_[0]'");
}

# Index configuration
$makeindex = 'upmendex -s index.ist %O -o %D %S';

# Clean up extensions
$clean_ext = 'bbl nav out snm xdv synctex.gz nlo nls ilg ind glo gls glg acn acr alg ist';
