echo "Running Grader: task3_1"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_1.out"

# Define test cases
test_cases=(
  "3.14"
  "2.16895"
  "1.23"
  "4.567"
  "0.9876"
  "9.87654"
  "0.12"
  "5.4321"
  "0.98765"
  "3.1415"
  "2.7182"
  "6.2831"
  "4.6692"
  "1.618"
  "3.14159"
  "2.71828"
  "0.16"
  "4.59"
  "0.9"
  "987.63"
  "12345.6"
  "5.4"
  "987.63"
  "3.1"
  "102"
  "3087"
  "467891"
  "0.0005"
  "9.8721"
  "1238.97"
)

# Run tests
for ((i=0; i<${#test_cases[@]}; i++)); do
  input="${test_cases[i]}"
  expected_output="$input"
  output=$(echo "$input" | "$executable")

  if [ $? -eq 0 ]; then
    echo -e "\e[32mPass: Program exited zero"
  else
    echo -e "\e[31mFail: Program did not exit zero"
  fi

  if [ "$output" == "$expected_output" ]; then
    echo -e "\e[32mPass: Output is correct\e[0m"
    score=10.0
    total_score=$(awk "BEGIN{printf \"%.1f\", $total_score + $score; exit}")
    passed_tests=$((passed_tests + 1))
  else
    echo -e "\e[31mExpected '$expected_output' but got: '$output'\e[0m"
    score=0.0
  fi

  echo "Test $((i+1)) Score: $score/10.0"
  echo
done

total_score=$(printf "%.1f" "$total_score")  # Round total score to 1 decimal place

max_score=$(awk "BEGIN{printf \"%.1f\", ${#test_cases[@]} * 10; exit}")  # Calculate the maximum possible score

echo -e "\e[35mTotal Score: $total_score/$max_score\e[0m"
echo -e "\e[35mPassed Tests: $passed_tests/${#test_cases[@]}\e[0m"
echo

# Check if all tests passed
if [ $passed_tests -eq ${#test_cases[@]} ]; then
  echo "All tests passed."
fi

exit 0