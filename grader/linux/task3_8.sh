#!/bin/bash
# Define task number
taskNumber="3_8"

# Define test cases (assuming you populate this array as needed)
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
test_cases_output=(
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


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"