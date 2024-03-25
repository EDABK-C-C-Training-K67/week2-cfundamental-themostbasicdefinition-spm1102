echo "Running Grader: task3_6"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_6.out"

# Define test cases
test_cases=(
  "Full Name: John Smith"
  "Full Name: Emily Johnson"
  "Full Name: William Davis"
  "Full Name: Olivia Brown"
  "Full Name: James Miller"
  "Full Name: Sophia Wilson"
  "Full Name: Benjamin Anderson"
  "Full Name: Ava Garcia"
  "Full Name: Daniel Martinez"
  "Full Name: Mia Nguyen"
  "Full Name: Samuel Tran"
  "Full Name: Isabella Le"
  "Full Name: David Pham"
  "Full Name: Sophia Hoang"
  "Full Name: Michael Vu"
  "Full Name: Emma Nguyen"
  "Full Name: Ethan Tran"
  "Full Name: Olivia Le"
  "Full Name: Alexander Pham"
  "Full Name: Mia Hoang"
  "Full Name: William Vu"
  "Full Name: Ava Nguyen"
  "Full Name: Joseph Tran"
  "Full Name: Charlotte Le"
  "Full Name: Daniel Pham"
  "Full Name: Amelia Hoang"
  "Full Name: Matthew Vu"
  "Full Name: Harper Nguyen"
  "Full Name: Henry Tran"
  "Full Name: Grace Le"
)

# Define expected outputs corresponding to the test cases
expected_outputs=(
  "John Smith"
  "Emily Johnson"
  "William Davis"
  "Olivia Brown"
  "James Miller"
  "Sophia Wilson"
  "Benjamin Anderson"
  "Ava Garcia"
  "Daniel Martinez"
  "Mia Nguyen"
  "Samuel Tran"
  "Isabella Le"
  "David Pham"
  "Sophia Hoang"
  "Michael Vu"
  "Emma Nguyen"
  "Ethan Tran"
  "Olivia Le"
  "Alexander Pham"
  "Mia Hoang"
  "William Vu"
  "Ava Nguyen"
  "Joseph Tran"
  "Charlotte Le"
  "Daniel Pham"
  "Amelia Hoang"
  "Matthew Vu"
  "Harper Nguyen"
  "Henry Tran"
  "Grace Le"
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

  if cmp -s <(echo "$output") <(echo -e "$expected_output"); then
    echo -e "\e[32mPass: Output is correct\e[0m"
    score=10.0
    total_score=$(awk "BEGIN{printf \"%.1f\", $total_score + $score; exit}")
    passed_tests=$((passed_tests + 1))
  else
    echo -e "\e[31mInput: '$input'\e[0m"
    echo -e "\e[31mExpected\n'$expected_output'\nbut got:\n'$output'\e[0m"
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