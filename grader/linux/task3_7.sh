#!/bin/bash
# Define task number
taskNumber="3_7"

# Define test cases (assuming you populate this array as needed)
test_cases=(
  "Tran Quang Huy,20210428,ET1-05,K66,2.5"
  "Nguyen Thi An,20210501,CS2-01,K67,3.75"
  "Le Van Minh,20210315,ME3-02,K65,3.2"
  "Pham Thi Lan,20210402,EE2-03,K66,3.9"
  "Hoang Duc Long,20210310,CE1-04,K65,2.8"
  "Vu Thi Mai,20210520,CS2-02,K67,3.6"
  "Do Van Khanh,20210218,ME3-01,K64,2.7"
  "Tran Thi Tuyet,20210305,EE2-02,K65,3.1"
  "Nguyen Van Thanh,20210225,CE1-03,K64,3.8"
  "Tran Thi Bich,20210412,ET1-03,K66,3.4"
  "Nguyen Van Hoang,20210228,CS2-03,K64,3.7"
  "Pham Thi Huong,20210320,ME3-03,K65,2.9"
  "Le Van Anh,20210405,EE2-01,K66,3.5"
  "Hoang Thi My,20210308,CE1-02,K65,3.3"
  "Vu Van Nam,20210418,CS2-04,K66,2.6"
  "Do Thi Thu,20210220,ME3-04,K64,3.0"
  "Tran Van Hieu,20210310,EE2-04,K65,3.8"
  "Nguyen Thi Ngoc,20210222,CE1-01,K64,3.2"
  "Tran Van Linh,20210408,ET1-02,K66,3.6"
  "Nguyen Van An,20210325,CS2-05,K65,2.5"
  "Pham Thi Hien,20210515,ME3-05,K67,3.9"
  "Le Van Hau,20210303,EE2-05,K65,2.7"
  "Hoang Thi Hoa,20210505,CE1-05,K67,3.3"
  "Vu Van Tuan,20210215,CS2-06,K64,3.4"
  "Do Thi Ngan,20210318,ME3-06,K65,3.1"
  "Tran Van Trung,20210410,EE2-06,K66,3.2"
  "Nguyen Thi Mai,20210306,CE1-06,K65,3.6"
  "Tran Van Khanh,20210422,ET1-06,K66,2.9"
  "Nguyen Thi Hoang,20210224,CS2-07,K64,3.5"
  "Pham Van An,20210315,ME3-07,K65,2.8"
)

# Define expected outputs corresponding to the test cases
test_cases_output=(
  "Tran Quang Huy
20210428
ET1-05
K66
2.50"
  "Nguyen Thi An
20210501
CS2-01
K67
3.75"
  "Le Van Minh
20210315
ME3-02
K65
3.20"
  "Pham Thi Lan
20210402
EE2-03
K66
3.90"
  "Hoang Duc Long
20210310
CE1-04
K65
2.80"
  "Vu Thi Mai
20210520
CS2-02
K67
3.60"
  "Do Van Khanh
20210218
ME3-01
K64
2.70"
  "Tran Thi Tuyet
20210305
EE2-02
K65
3.10"
  "Nguyen Van Thanh
20210225
CE1-03
K64
3.80"
  "Tran Thi Bich
20210412
ET1-03
K66
3.40"
  "Nguyen Van Hoang
20210228
CS2-03
K64
3.70"
  "Pham Thi Huong
20210320
ME3-03
K65
2.90"
  "Le Van Anh
20210405
EE2-01
K66
3.50"
  "Hoang Thi My
20210308
CE1-02
K65
3.30"
  "Vu Van Nam
20210418
CS2-04
K66
2.60"
  "Do Thi Thu
20210220
ME3-04
K64
3.00"
  "Tran Van Hieu
20210310
EE2-04
K65
3.80"
  "Nguyen Thi Ngoc
20210222
CE1-01
K64
3.20"
  "Tran Van Linh
20210408
ET1-02
K66
3.60"
  "Nguyen Van An
20210325
CS2-05
K65
2.50"
  "Pham Thi Hien
20210515
ME3-05
K67
3.90"
  "Le Van Hau
20210303
EE2-05
K65
2.70"
  "Hoang Thi Hoa
20210505
CE1-05
K67
3.30"
  "Vu Van Tuan
20210215
CS2-06
K64
3.40"
  "Do Thi Ngan
20210318
ME3-06
K65
3.10"
  "Tran Van Trung
20210410
EE2-06
K66
3.20"
  "Nguyen Thi Mai
20210306
CE1-06
K65
3.60"
  "Tran Van Khanh
20210422
ET1-06
K66
2.90"
  "Nguyen Thi Hoang
20210224
CS2-07
K64
3.50"
  "Pham Van An
20210315
ME3-07
K65
2.80"
)


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"