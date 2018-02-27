BEGIN {FS="[\ *]+" }
$6<=-1{print $1," is missing a/multipule score(s)..."}
