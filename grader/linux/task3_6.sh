#!/bin/bash
# Define task number
taskNumber="3_6"

# Define test cases (assuming you populate this array as needed)
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
test_cases_output=(
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


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"