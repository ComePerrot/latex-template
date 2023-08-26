$pdf_mode = 1;

$ENV{'TEXINPUTS'}='./src//:' . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'}='./src//:' . $ENV{'BIBINPUTS'};
@default_files = ('main.tex');

$out_dir="./build";