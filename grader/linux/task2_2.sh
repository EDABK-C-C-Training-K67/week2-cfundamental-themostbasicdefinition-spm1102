#!/bin/bash
# Define task number
taskNumber="2_2"

# Define test cases (assuming you populate this array as needed)
test_cases=(
''
)

test_cases_output=(
'========================================
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
)


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"