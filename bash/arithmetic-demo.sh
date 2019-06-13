#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number


read firstnum secondnum
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
sub=$((firstnum - secondnum))
mul=$((firstnum * secondnum))
modulus=$((firstnum % secondnum))

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
$firstnum minus $secondnum is $sub
$firstnum multiply $secondnum is $mul
$firstnum divided $secondnum is $dividend with remainder $modulus
EOF
