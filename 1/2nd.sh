#$ /bin/bash
input=$1
for i in $(cut -f 1 -d ' ' $input); do echo "$i*$(grep -c $i$ $input)"; done | bc | paste -sd + | bc

