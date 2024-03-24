echo "Running Grader: task2_2"
echo

# Define the path to the executable
executable="./src/task2_2.out"

# Define the expected output
expected_output='========================================
              FILE REPORT
========================================
File address:       3F5E83
Path:               C:\User\Administrator\Downloads\file.txt
Content:            "Hello World!"
Author:             Tran Quang Huy
Size:               4KB

Metadata:
Date created:       19/03/2024
Date modified:      20/03/2024'

# Run the test
output=$("$executable")

all_tests_passed=true

if [ "$output" == "$expected_output" ]; then
  echo -e "\e[32mPass: Output is correct"
  score=10.0
else
  printf "\e[31mFail: Expected \n\e[0m'%s'\n\e[31mbut got:\n\e[0m'%s'\n" "$expected_output" "$output"
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