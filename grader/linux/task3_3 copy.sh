echo "Running Grader: task3_3"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_3.out"

# Define test cases
test_cases=(
  "Tran Quang Huy 20210428 ET1-05 - K66 GPA: 2.5"
  "Hello World"
  "OpenAI is amazing"
  "12345"
  "Testing 1 2 3"
  "This is a long string with multiple spaces"
  "  Leading and trailing spaces  "
  "Special characters: !@#$%^&*()"
  "Empty string"
  "     "
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
  "Numbers: 1234567890"
  "Lowercase letters: abcdefghijklmnopqrstuvwxyz"
  "Uppercase letters: ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  "MixEd cAsE StRiNg"
  "String with tab character: \t"
  "String with newline character: \n"
  "String with backslash: \\"
  "String with quotes: \"Hello, World!\""
  "String with special characters: ~\`_+-=[]{}|;:,<.>"
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