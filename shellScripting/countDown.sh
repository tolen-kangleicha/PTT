# print a patterns of coundown

#!/bin/sh
i=0
while [ $i -le 9 ]; do
    j=$i
    while [ $j -ge 0 ]; do
        echo -n "$j  "
        j=$(($j - 1))
    done
    i=$(($i + 1))

    echo
done
