echo "Running Grader: task3_2"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_2.out"

# Define test cases
test_cases=(
  "3.14 6"
  "2.71828 4"
  "1.23456789 8"
  "0.987654321 9"
  "4.5678901234 10"
  "0.12345 5"
  "9.87654321 8"
  "6.5432109876 10"
  "5.4321 4"
  "2.3456789 7"
  "0.98765 5"
  "1.234567 6"
  "7.654321 6"
  "2.16895 5"
  "0.54321 5"
  "8.7654321 8"
  "4.3210987654 10"
  "1.111111111 9"
  "9.9999999999 11"
  "123456789.987654321 6"
  "98765.123456789 10"
  "987654.123456789 8"
  "99999.9999999999 10"
  "123467890.9876543210 7"
  "987.1234567890 9"
  "987654321.0987654321 5"
  "98765.4321098765 6"
  "54321.0987654321 4"
  "543210.9876543210 8"
  "9.1234567890 15"
)

# Define expected outputs corresponding to the test cases
expected_outputs=(
  "3.140000"
  "2.7183"
  "1.23456789"
  "0.987654321"
  "4.5678901234"
  "0.12345"
  "9.87654321"
  "6.5432109876"
  "5.4321"
  "2.3456789"
  "0.98765"
  "1.234567"
  "7.654321"
  "2.16895"
  "0.54321"
  "8.76543210"
  "4.3210987654"
  "1.111111111"
  "9.99999999990"
  "123456789.987654"
  "98765.1234567890"
  "987654.12345679"
  "99999.9999999999"
  "123467890.9876543"
  "987.123456789"
  "987654321.09877"
  "98765.432110"
  "54321.0988"
  "543210.98765432"
  "9.123456789000000"
)

# Run tests
for ((i=0; i<${#test_cases[@]}; i++)); do
  input="${test_cases[i]}"
  expected_output="${expected_outputs[i]}"
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
    echo -e "\e[31mInput: '$input'\e[0m"
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