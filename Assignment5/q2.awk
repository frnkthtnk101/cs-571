BEGIN {FS="[\ *]+"}
$2==0{print $1," has a grade of zero for score_1"}
$3==0{print $1," has a grade of zero for score_2"}
$4==0{print $1," has a grade of zero for score_3"}
$5==0{print $1," has a grade of zero for score_4"}
$6==0{print $1," has a grade of zero for score_5"}
