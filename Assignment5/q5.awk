{
rows[NR]=$1" " $2" " $3" "$4
}
END{print rows[int(NR/2)]}



