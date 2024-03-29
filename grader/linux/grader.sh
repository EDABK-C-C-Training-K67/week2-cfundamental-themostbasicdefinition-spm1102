taskNumber=$1
test_cases=$2
test_cases_output=$3

# Capture the string and arrays
myString=$1
IFS=' ' read -r -a array1 <<< "$2"
IFS=' ' read -r -a array2 <<< "$3"

# Use the passed string and arrays
echo "Received string: $myString"
echo "Received array 1: ${array1[*]}"
echo "Received array 2: ${array2[*]}"

buildDir="./build"

# Define the path to the executable
executable="$buildDir/task$taskNumber.out"

# Initialize total score and passed test count
total_score=0.0
passed_tests=0
all_tests_passed=true


# Display the running grader header
echo ""
echo "--------------------------------------------------"
echo "|            Running Grader: Task $taskNumber            |"
echo "--------------------------------------------------"
echo ""

# Run tests
for ((i=0; i<${#test_cases[@]}; i++)); do
  input="${test_cases[i]}"
  expected_output="${test_cases_output[i]}"
  output=$(echo -n "$input" | "$executable")

  if [ $? -eq 0 ]; then
    echo -e "\e[32mPass: Program exited zero"
  else
    echo -e "\e[31mFail: Program did not exit zero"
  fi

  if cmp -s <(echo -e "$output") <(echo -e "$expected_output"); then
    echo -e "\e[32mPass: Output is correct\e[0m"
    score=10.0
    total_score=$(awk "BEGIN{printf \"%.1f\", $total_score + $score; exit}")
    passed_tests=$((passed_tests + 1))
    echo -e "\e[31mExpected\n'$expected_output'\nbut got:\n'$output'\e[0m"
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
  echo "--------------------------------------------------"
  echo "|                Congratulations!                |"
  echo "|               Task $taskNumber Completed               |"
  echo "--------------------------------------------------"
else
  echo "--------------------------------------------------"
  echo "|                      Oops!                     |"
  echo "|                Task $taskNumber Failed                 |"
  echo "--------------------------------------------------"
fi

exit 0