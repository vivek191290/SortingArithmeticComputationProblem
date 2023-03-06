echo "Welcome to Arithmetic Computation & Sorting program"

declare -A result

read -p "Enter fist number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c


result[1]=$((a+b*c))
result[2]=$((a*b+c))
result[3]=$((c+a/b))
result[4]=$((a%b+c))

values=()
for key in "${!result[@]}"
do
values+=("${result[$key]}")
done

echo "result is sorted by Descending Order: " ${values[@]} |tr ' ' '\n' | sort -rn
