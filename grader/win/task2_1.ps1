$scriptPath = "$PSScriptRoot\grader.ps1"
$taskNumber = "2_1"

# Define test cases
$test_cases = @(
  ""
)

$test_cases_output = @("4
3.1400
a
128
Hello World!"
)

& $scriptPath