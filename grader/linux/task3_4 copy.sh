echo "Running Grader: task3_4"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_4.out"

# Define test cases
test_cases=(
  "I love coding and solving problems."
  "The quick brown fox jumps over the lazy dog."
  "This is a test123 sentence."
  "Hello, World! The answer is 42."
  "Programming is fun and 2 + 2 equals 4."
  "Today is a beautiful day with a temperature of 25 degrees Celsius."
  "Life is what happens when you're busy making other plans, like paying bills."
  "To be or not to be, that is the question. The time is 9:30 AM."
  "In the end, it's not the years in your life that count. It's the life in your years, like when you turned 30."
  "The only way to do great work is to love what you do and give 100% effort."
  "Success is not final, failure is not fatal: It is the courage to continue that counts. You have 3 missed calls."
  "Education is the most powerful weapon which you can use to change the world. The year is 2022."
  "Stay hungry, stay foolish. You have 123 unread messages."
  "Be yourself; everyone else is already taken. The value of pi is approximately 3.14."
  "Life is really simple, but we insist on making it complicated. The deadline is in 5 days."
  "The greatest glory in living lies not in never falling, but in rising every time we fall. Your account balance is \$1000."
  "There is no substitute for hard work. You have 99 bottles of beer on the wall."
  "The harder I work, the luckier I get. The password is 123ABC."
  "A journey of a thousand miles begins with a single step. Call me at 867-5309."
  "Dream big and dare to fail. Agent 007 reporting for duty."
  "Life is either a daring adventure or nothing at all. The value of pi is 3.14159."
  "The best time to plant a tree was 20 years ago. The second best time is now. The answer is 42."
  "Today's date is March 21, 2024. Don't forget to submit your assignment by 11:59 PM."
  "The quick brown fox jumps over the lazy dog. The fox is 7 years old."
  "I have 2 cats and 3 dogs. The total number of pets is 5."
  "The price of the product is \$19.99. It's on sale for 50% off."
  "I have been waiting for 3 hours. The wait is almost over."
  "The population of the city is 1 million. It's the capital city of the country."
)


# Define expected outputs corresponding to the test cases
expected_outputs=(
  "I love coding and solving problems."
  "The quick brown fox jumps over the lazy dog."
  "This is a test"
  "Hello, World! The answer is "
  "Programming is fun and "
  "Today is a beautiful day with a temperature of "
  "Life is what happens when you're busy making other plans, like paying bills."
  "To be or not to be, that is the question. The time is "
  "In the end, it's not the years in your life that count. It's the life in your years, like when you turned "
  "The only way to do great work is to love what you do and give "
  "Success is not final, failure is not fatal: It is the courage to continue that counts. You have "
  "Education is the most powerful weapon which you can use to change the world. The year is "
  "Stay hungry, stay foolish. You have "
  "Be yourself; everyone else is already taken. The value of pi is approximately "
  "Life is really simple, but we insist on making it complicated. The deadline is in "
  "The greatest glory in living lies not in never falling, but in rising every time we fall. Your account balance is \$"
  "There is no substitute for hard work. You have "
  "The harder I work, the luckier I get. The password is "
  "A journey of a thousand miles begins with a single step. Call me at "
  "Dream big and dare to fail. Agent "
  "Life is either a daring adventure or nothing at all. The value of pi is "
  "The best time to plant a tree was "
  "Today's date is March "
  "The quick brown fox jumps over the lazy dog. The fox is "
  "I have "
  "The price of the product is \$"
  "I have been waiting for "
  "The population of the city is "
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