#!/bin/bash
# Define task number
taskNumber="3_3"

# Define test cases (assuming you populate this array as needed)
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

test_cases_output=(
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

# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"