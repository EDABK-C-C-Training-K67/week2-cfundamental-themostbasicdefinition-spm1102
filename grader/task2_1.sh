echo "Running Grader: task2_1"
echo

# Define the path to the executable
executable="./src/task2_1.out"

# Define the expected output
expected_output="4
3.1400
a
128
Hello World!"

# Run the test
output=$("$executable")

all_tests_passed=true

if [ "$output" == "$expected_output" ]; then
  echo -e "\e[32mPass: Output is correct"
  score=10.0
else
  echo -e "\e[31mFail: Expected \n\e[0m'$expected_output'\n\e[31mbut got:\n\e[0m'$output'"
  score=0.0
  all_tests_passed=false
fi

echo
echo -e "\e[35mTest Score: $score/10.0"

if $all_tests_passed; then
  echo -e "\e[0mAll tests passed."
fi

echo

exit 0