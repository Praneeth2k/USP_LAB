#! /bin/sh

echo "Enter two numbers"
read a
read b

echo "1:Add 2:Subtract 3:Multiply 4:Divide 5:Find remainder"
read ch
case $ch in
  1)res=`echo $a + $b | bc` 
  ;; 
  2)res=`echo $a - $b | bc` 
  ;; 
  3)res=`echo $a \* $b | bc` 
  ;; 
  4)res=`echo $a / $b | bc` 
  ;; 
  5)res=`echo $a \% $b | bc`
  ;;
esac
echo "Result : $res"



# Enter two numbers
# 19
# 3
# 1:Add 2:Subtract 3:Multiply 4:Divide 5:Find remainder
# 5
# Result : 1


# Enter two numbers
# 36
# 11
# 1:Add 2:Subtract 3:Multiply 4:Divide 5:Find remainder
# 2
# Result : 25

# Enter two numbers
# 2
# 4
# 1:Add 2:Subtract 3:Multiply 4:Divide 5:Find remainder
# 3
# Result : 8
