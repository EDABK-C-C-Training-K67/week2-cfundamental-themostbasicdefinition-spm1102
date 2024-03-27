#!/bin/bash
# Define task number
taskNumber="3_9"

# Define test cases (assuming you populate this array as needed)
test_cases=(
  "Tran Quang Huy
20210428
30-08-2003
Electronics and Telecommunication Engineering
ET1
5
K66
2.5"
  "Nguyen Thi Thao
20220105
15-02-2002
Computer Science
CS2
2
K68
3.75"
  "Le Van An
20211231
01-01-2000
Mechanical Engineering
ME1
3
K70
3.2"
  "Pham Thi Mai
20220315
25-09-2003
Chemistry
CH1
1
K69
3.9"
  "Truong Minh Tuan
20220101
10-05-2002
Electrical Engineering
EE2
4
K68
3.6"
  "Hoang Thi Thu
20210101
05-12-2001
Civil Engineering
CE1
2
K69
2.8"
  "Vo Van Nam
20220420
20-06-2004
Business Administration
BA1
6
K71
3.1"
  "Nguyen Van Binh
20200315
12-07-2001
Information Technology
IT3
3
K67
3.8"
  "Tran Thi My Linh
20230228
28-02-2003
Finance and Banking
FB1
4
K72
3.5"
  "Pham Van Cuong
20211210
03-09-2000
Mechanical Engineering
ME2
2
K70
2.9"
  "Le Thi Thu Ha
20220120
10-01-2002
Chemical Engineering
CE1
3
K68
3.2"
  "Nguyen Van Long
20200229
15-10-2001
Computer Engineering
CE2
5
K67
3.6"
  "Tran Thi Thu Trang
20220902
20-05-2003
Economics
EC1
1
K71
3.9"
  "Pham Van Hung
20220401
01-04-2004
Electrical Engineering
EE1
4
K71
3.7"
  "Vo Thi Thanh Huyen
20200505
15-08-2001
Civil Engineering
CE1
2
K67
2.8"
  "Le Van Minh
20230310
10-03-2003
Business Administration
BA2
6
K72
3.1"
  "Nguyen Thi Huong
20221020
20-10-2002
Marketing
MK1
2
K71
3.4"
  "Tran Van Anh
20220315
15-03-2003
Computer Science
CS1
2
K69
3.2"
  "Nguyen Thi Hanh
20220101
01-01-2002
Electrical Engineering
EE2
4
K68
3.5"
  "Le Van Cuong
20211010
10-10-2001
Mechanical Engineering
ME1
3
K70
2.9"
  "Pham Thi Thu Ha
20230220
20-02-2003
Chemical Engineering
CE1
3
K71
3.2"
  "Nguyen Van Long
20221231
31-12-2002
Computer Engineering
CE2
5
K69
3.6"
  "Tran Thi Thu Trang
20220402
02-04-2004
Economics
EC2
1
K72
3.9"
  "Pham Van Hung
20220505
05-05-2003
Electrical Engineering
EE1
4
K71
3.7"
  "Nguyen Thi Thanh Huyen
20220110
10-01-2002
Civil Engineering
CE1
2
K70
2.8"
  "Le Van Minh
20230701
01-07-2003
Business Administration
BA1
6
K72
3.1"
  "Nguyen Thi Huong
20221220
20-12-2002
Marketing
MK1
2
K70
3.4"
  "Tran Quang Huy
20230228
28-02-2003
Information Technology
IT3
3
K71
3.8"
  "Nguyen Thi My Linh
20220215
15-02-2002
Finance and Banking
FB2
4
K69
3.5"
  "Le Van An
20211005
05-10-2001
Mechanical Engineering
ME2
2
K70
2.7"
)

# Define expected outputs corresponding to the test cases
test_cases_output=(
  "Name: Tran Quang Huy
ID: 20210428
Date of birth: 30/08/2003
Field: Electronics and Telecommunication Engineering
Class: ET1-05 - K66
GPA: 2.50"
  "Name: Nguyen Thi Thao
ID: 20220105
Date of birth: 15/02/2002
Field: Computer Science
Class: CS2-02 - K68
GPA: 3.75"
  "Name: Le Van An
ID: 20211231
Date of birth: 01/01/2000
Field: Mechanical Engineering
Class: ME1-03 - K70
GPA: 3.20"
  "Name: Pham Thi Mai
ID: 20220315
Date of birth: 25/09/2003
Field: Chemistry
Class: CH1-01 - K69
GPA: 3.90"
  "Name: Truong Minh Tuan
ID: 20220101
Date of birth: 10/05/2002
Field: Electrical Engineering
Class: EE2-04 - K68
GPA: 3.60"
  "Name: Hoang Thi Thu
ID: 20210101
Date of birth: 05/12/2001
Field: Civil Engineering
Class: CE1-02 - K69
GPA: 2.80"
  "Name: Vo Van Nam
ID: 20220420
Date of birth: 20/06/2004
Field: Business Administration
Class: BA1-06 - K71
GPA: 3.10"
  "Name: Nguyen Van Binh
ID: 20200315
Date of birth: 12/07/2001
Field: Information Technology
Class: IT3-03 - K67
GPA: 3.80"
  "Name: Tran Thi My Linh
ID: 20230228
Date of birth: 28/02/2003
Field: Finance and Banking
Class: FB1-04 - K72
GPA: 3.50"
  "Name: Pham Van Cuong
ID: 20211210
Date of birth: 03/09/2000
Field: Mechanical Engineering
Class: ME2-02 - K70
GPA: 2.90"
  "Name: Le Thi Thu Ha
ID: 20220120
Date of birth: 10/01/2002
Field: Chemical Engineering
Class: CE1-03 - K68
GPA: 3.20"
  "Name: Nguyen Van Long
ID: 20200229
Date of birth: 15/10/2001
Field: Computer Engineering
Class: CE2-05 - K67
GPA: 3.60"
  "Name: Tran Thi Thu Trang
ID: 20220902
Date of birth: 20/05/2003
Field: Economics
Class: EC1-01 - K71
GPA: 3.90"
  "Name: Pham Van Hung
ID: 20220401
Date of birth: 01/04/2004
Field: Electrical Engineering
Class: EE1-04 - K71
GPA: 3.70"
  "Name: Vo Thi Thanh Huyen
ID: 20200505
Date of birth: 15/08/2001
Field: Civil Engineering
Class: CE1-02 - K67
GPA: 2.80"
  "Name: Le Van Minh
ID: 20230310
Date of birth: 10/03/2003
Field: Business Administration
Class: BA2-06 - K72
GPA: 3.10"
  "Name: Nguyen Thi Huong
ID: 20221020
Date of birth: 20/10/2002
Field: Marketing
Class: MK1-02 - K71
GPA: 3.40"
  "Name: Tran Van Anh
ID: 20220315
Date of birth: 15/03/2003
Field: Computer Science
Class: CS1-02 - K69
GPA: 3.20"
  "Name: Nguyen Thi Hanh
ID: 20220101
Date of birth: 01/01/2002
Field: Electrical Engineering
Class: EE2-04 - K68
GPA: 3.50"
  "Name: Le Van Cuong
ID: 20211010
Date of birth: 10/10/2001
Field: Mechanical Engineering
Class: ME1-03 - K70
GPA: 2.90"
  "Name: Pham Thi Thu Ha
ID: 20230220
Date of birth: 20/02/2003
Field: Chemical Engineering
Class: CE1-03 - K71
GPA: 3.20"
  "Name: Nguyen Van Long
ID: 20221231
Date of birth: 31/12/2002
Field: Computer Engineering
Class: CE2-05 - K69
GPA: 3.60"
  "Name: Tran Thi Thu Trang
ID: 20220402
Date of birth: 02/04/2004
Field: Economics
Class: EC2-01 - K72
GPA: 3.90"
  "Name: Pham Van Hung
ID: 20220505
Date of birth: 05/05/2003
Field: Electrical Engineering
Class: EE1-04 - K71
GPA: 3.70"
  "Name: Nguyen Thi Thanh Huyen
ID: 20220110
Date of birth: 10/01/2002
Field: Civil Engineering
Class: CE1-02 - K70
GPA: 2.80"
  "Name: Le Van Minh
ID: 20230701
Date of birth: 01/07/2003
Field: Business Administration
Class: BA1-06 - K72
GPA: 3.10"
  "Name: Nguyen Thi Huong
ID: 20221220
Date of birth: 20/12/2002
Field: Marketing
Class: MK1-02 - K70
GPA: 3.40"
  "Name: Tran Quang Huy
ID: 20230228
Date of birth: 28/02/2003
Field: Information Technology
Class: IT3-03 - K71
GPA: 3.80"
  "Name: Nguyen Thi My Linh
ID: 20220215
Date of birth: 15/02/2002
Field: Finance and Banking
Class: FB2-04 - K69
GPA: 3.50"
  "Name: Le Van An
ID: 20211005
Date of birth: 05/10/2001
Field: Mechanical Engineering
Class: ME2-02 - K70
GPA: 2.70"
)


# Define the path to the grader script
scriptPath="$(dirname "$0")/grader.sh"
buildDir="./build"

# Export arrays
echo "Exporting test cases to $buildDir/array_data_$taskNumber.sh..."
declare -p test_cases test_cases_output > "$buildDir/array_data_$taskNumber.sh"
# Run the grader script
/bin/bash "$scriptPath" "$taskNumber"