# Compile this Beamer project with XeLaTeX.
$pdf_mode = 5;
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -halt-on-error %O %S';
$xdvipdfmx = 'xdvipdfmx -i dvipdfmx-unsafe.cfg -E -o %D %O %S';

# Treat the Biber-generated .bbl file as reproducible, so latexmk -c removes it.
$bibtex_use = 2;

# Keep latexmk cleanup aware of Beamer and biblatex intermediates.
@generated_exts = (@generated_exts, 'bbl', 'bcf', 'blg', 'listing', 'nav', 'run.xml', 'snm', 'vrb', 'xdv');
$clean_ext .= ' bcf blg listing nav run.xml snm vrb xdv';
