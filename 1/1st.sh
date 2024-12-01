#$ /bin/bash
input=$1
paste <(awk '{print $1}' $input | sort) <(awk '{print $2}' $input | sort) -d - | bc | tr -d '-' | paste -sd + | bc

