#!/bin/bash

# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
taskNumber="x_y"

# Define test cases (assuming you populate this array as needed)
test_cases=(

)

test_cases_output=(

)

# Run the grader script
/bin/bash "$scriptPath" "$taskNumber" "$test_cases" "$test_cases_output"
