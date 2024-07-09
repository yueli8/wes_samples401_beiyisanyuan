#https://www.jianshu.com/p/ae4b772ef090#use utf8;
binmode(STDOUT,":utf8");
my %hash;
sub uniq { 
    return keys %{{map {$_=>1} @_}}; 
    }
open(INPUT,"n")or die, $!;
open(OUTPUT,">tmp01_1.txt")or die, $!;
foreach (<INPUT>) {
  if(/^(\S+)(\s.*?)[\n\r]*$/){ 
    $hash{$1} .= $2;
  }
}
close INPUT;
foreach (sort keys %hash) {
  my @elements = uniq (split ('\t', $hash{$_})); 
  print OUTPUT "$_\t", join(' ', sort @elements), "\n";
}
