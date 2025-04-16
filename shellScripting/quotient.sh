!/bin/sh

if [ $# -ne 2 ]; then
    echo "usage: quotient <arg1> <arg2>"
    exit 1
fi
dividend=$1
divisor=$2
quotient=0

if [ $divisor -eq 0 ]; then
    echo "Divisor can not be zero"
    exit 1
fi

while [ $dividend -ge $divisor ]; do
    dividend=$(($dividend - $divisor))
    quotient=$(($quotient + 1))
done

echo "Result: $quotient"
