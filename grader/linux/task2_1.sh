#!/bin/bash

# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
taskNumber="2_1"

# Define test cases (assuming you populate this array as needed)
test_cases=(
""
)

test_cases_output=(
"4
3.1400
a
128
Hello World!"
)

# Run the grader script
/bin/bash "$scriptPath" "$taskNumber" "$test_cases" "$test_cases_output"
