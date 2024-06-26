#!/bin/bash

# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
taskNumber="3_2"

# Define test cases (assuming you populate this array as needed)
test_cases=(
    "3.14 6"
    "2.71828 4"
    "1.23456789 8"
    "0.987654321 9"
    "4.5678901234 10"
    "0.12345 5"
    "9.87654321 8"
    "6.5432109876 10"
    "5.4321 4"
    "2.3456789 7"
    "0.98765 5"
    "1.234567 6"
    "7.654321 6"
    "2.16895 5"
    "0.54321 5"
    "8.7654321 8"
    "4.3210987654 10"
    "1.111111111 9"
    "9.9999999999 11"
    "123456789.987654321 6"
    "98765.123456789 10"
    "987654.123456789 8"
    "99999.9999999999 10"
    "123467890.9876543210 7"
    "987.1234567890 9"
    "987654321.0987654321 5"
    "98765.4321098765 6"
    "54321.0987654321 4"
    "543210.9876543210 8"
    "9.1 14"
)

test_cases_output=(
    "3.140000"
    "2.7183"
    "1.23456789"
    "0.987654321"
    "4.5678901234"
    "0.12345"
    "9.87654321"
    "6.5432109876"
    "5.4321"
    "2.3456789"
    "0.98765"
    "1.234567"
    "7.654321"
    "2.16895"
    "0.54321"
    "8.76543210"
    "4.3210987654"
    "1.111111111"
    "9.99999999990"
    "123456789.987654"
    "98765.1234567890"
    "987654.12345679"
    "99999.9999999999"
    "123467890.9876543"
    "987.123456789"
    "987654321.09877"
    "98765.432110"
    "54321.0988"
    "543210.98765432"
    "9.10000000000000"
)

# Run the grader script
/bin/bash "$scriptPath" "$taskNumber" "$test_cases" "$test_cases_output"
