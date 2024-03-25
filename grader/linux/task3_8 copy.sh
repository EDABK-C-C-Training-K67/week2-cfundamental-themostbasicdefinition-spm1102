echo "Running Grader: task3_8"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_8.out"

# Define test cases
test_cases=(
  "tran quang huy huy.tq210428@sis.hust.edu.vn 20210428 et1-05 - k66 gpa: 2.5"
  "abc123@xyz.com 20220321 4.8 test@"
  "this is a test string!"
  "12345 67890$"
  "hello.world#"
  "test@123 xyz!"
  "8.8.8.8?"
  "abcdefg 12345@"
  "abc@xyz.com. hello&"
  "1.2.3.4 hi!"
  "helloworld_"
  "abc123?"
  "test.test@test.com!!"
  "555 666 #"
  "abc@123 &"
  "hello 123 world+"
  "test.test@test test*"
  "abc@xyz,"
  "1.2.3.4.5 is"
  "this is another test_"
  "test123@xyz.com."
  "hello world#"
  "98765 43210 *"
  "test.test@test.com.test?"
  "@xyz.com,"
  "1.2.3 :"
  "test@123.com^"
  "abc.xyz-"
  "0.8.4.8 ;"
  "test123@xyz!"
)

# Define expected outputs corresponding to the test cases
expected_outputs=(
  "tran quang huy huy.tq210428@sis.hust.edu.vn 20210428 et1"
  "abc123@xyz.com 20220321 4.8 test@"
  "this is a test string"
  "1234"
  "hello.world"
  "test@123 xyz"
  "8.8.8.8"
  "abcdefg 1234"
  "abc@xyz.com. hello"
  "1.2.3.4 hi"
  "helloworld"
  "abc123"
  "test.test@test.com"
  ""
  "abc@123 "
  "hello 123 world"
  "test.test@test test"
  "abc@xyz"
  "1.2.3.4."
  "this is another test"
  "test123@xyz.com."
  "hello world"
  ""
  "test.test@test.com.test"
  "@xyz.com"
  "1.2.3 "
  "test@123.com"
  "abc.xyz"
  "0.8.4.8 "
  "test123@xyz"
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