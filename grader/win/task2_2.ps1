$scriptPath = "$PSScriptRoot\grader.ps1"
$taskNumber = "2_2"

# Define test cases
$test_cases = @(
  ""
)

$test_cases_output = @(@"
========================================
              FILE REPORT
========================================
File address:       3F5E83
Path:               C:\User\Administrator\Downloads\file.txt
Content:            "Hello World!"
Author:             Tran Quang Huy
Size:               4KB

Metadata:
Date created:       19/03/2024
Date modified:      20/03/2024
"@
)

& $scriptPath