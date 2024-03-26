#!/bin/bash
# Define task number
taskNumber="3_5"

# Define test cases (assuming you populate this array as needed)
test_cases=(
  "20210428"
  "20151234"
  "20220001"
  "20180001"
  "20301010"
  "20190001"
  "20221001"
  "20200001"
  "20221212"
  "20210001"
  "20230001"
  "20170001"
  "20240001"
  "20160001"
  "20250001"
  "20140001"
  "20260001"
  "20130001"
  "20270001"
  "20120001"
  "20280001"
  "20110001"
  "20290001"
  "20100001"
  "20090001"
  "20310001"
  "20080001"
  "20320001"
  "20070001"
  "20330001"
)

# Define expected outputs corresponding to the test cases
test_cases_output=(
  "2021\n4063"
  "2015\n4045"
  "2022\n4066"
  "2018\n4054"
  "2030\n4090"
  "2019\n4057"
  "2022\n4066"
  "2020\n4060"
  "2022\n4066"
  "2021\n4063"
  "2023\n4069"
  "2017\n4051"
  "2024\n4072"
  "2016\n4048"
  "2025\n4075"
  "2014\n4042"
  "2026\n4078"
  "2013\n4039"
  "2027\n4081"
  "2012\n4036"
  "2028\n4084"
  "2011\n4033"
  "2029\n4087"
  "2010\n4030"
  "2009\n4027"
  "2031\n4093"
  "2008\n4024"
  "2032\n4096"
  "2007\n4021"
  "2033\n4099"
)


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"