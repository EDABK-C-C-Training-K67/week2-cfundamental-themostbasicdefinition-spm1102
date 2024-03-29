echo "Running Grader: task3_5"
echo

# Initialize total score and passed test count
total_score=0.0
passed_tests=0

# Define the path to the executable
executable="./src/task3_5.out"

# Define test cases
test_cases=(
  "20210428"
  "20151234"
  "20220001"
  "20180001"
  "20301010"
  "20190001"
  "20221001"
  "20200001"
  "20221212"
  "20210001"
  "20230001"
  "20170001"
  "20240001"
  "20160001"
  "20250001"
  "20140001"
  "20260001"
  "20130001"
  "20270001"
  "20120001"
  "20280001"
  "20110001"
  "20290001"
  "20100001"
  "20090001"
  "20310001"
  "20080001"
  "20320001"
  "20070001"
  "20330001"
)

# Define expected outputs corresponding to the test cases
expected_outputs=(
  "2021\n4063"
  "2015\n4045"
  "2022\n4066"
  "2018\n4054"
  "2030\n4090"
  "2019\n4057"
  "2022\n4066"
  "2020\n4060"
  "2022\n4066"
  "2021\n4063"
  "2023\n4069"
  "2017\n4051"
  "2024\n4072"
  "2016\n4048"
  "2025\n4075"
  "2014\n4042"
  "2026\n4078"
  "2013\n4039"
  "2027\n4081"
  "2012\n4036"
  "2028\n4084"
  "2011\n4033"
  "2029\n4087"
  "2010\n4030"
  "2009\n4027"
  "2031\n4093"
  "2008\n4024"
  "2032\n4096"
  "2007\n4021"
  "2033\n4099"
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