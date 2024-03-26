$scriptPath = "$PSScriptRoot\grader.ps1"
$taskNumber = "3_3"

# Define test cases
$test_cases = @(
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
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia nisi id ante venenatis ul"
    "Numbers: 1234567890"
    "Lowercase letters: abcdefghijklmnopqrstuvwxyz"
    "Uppercase letters: ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    "MixEd cAsE StRiNg"
    "String with tab character: \t"
    "String with newline character: \n"
    "String with backslash: \\"
    "String with quotes: `"Hello, World!`""
    "String with special characters: ~\`_+-=[]{}|;:,<.>"
)

$test_cases_output = $test_cases

& $scriptPath