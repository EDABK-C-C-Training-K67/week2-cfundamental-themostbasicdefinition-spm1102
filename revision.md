# **Note: All your code should be save in coresponding file in directory `src/`**

# Task 1: Report

Please prepare your report using Markdown format and save it as `readme.md`.

# Task 2: Practice `printf`

## 2.1. Write a program that outputs the values of the following variables to the console in seperated lines:

```c
int a = 4;
float b = 3.14;
char c = 97;
unsigned short d = 128;
char str[] = "Hello World!";
```

**Input:** None

**Output:**

```
4
3.1400
a
128
Hello World!
```

## 2.2. Write a program that outputs the values of the following attributes to the console:

```c
File address in memory: 4152963
File path: C:\User\Administrator\Downloads\file.txt
File content: Hello World!
Author: Tran Quang Huy
File size: 4KB
Date created: 19/03/2024
Date modified: 20/03/2024
```

**Input:** None

**Expected output format:**  
- The number of `'='` is **40**  
- The space between the start of the line to the end of string `"FILE REPORT"` is **25**  
- Each field name should have a width of **20**  

```
<---------------- 40 ------------------>
========================================
<--------- 25 --------->
              FILE REPORT
========================================
<------- 20 ------->
File address:       3F5E83 <-- Hexa format of 4152963
Path:               C:\User\Administrator\Downloads\file.txt
Content:            "Hello World!"
Author:             Tran Quang Huy
Size:               4KB

Metadata:
Date created:       19/03/2024
Date modified:      20/03/2024
```

**Expected Output:**  
```
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
```

# Task 3: Practice `scanf`

## 3.1. Develop a program that receives a real number as input and prints the number to the console.

**Input:** A real number with a maximum of 6 digits  
E.g. 3.14121, 103.167, 987654, 12345.7

```
3.14
```

**Output:** Given number

```
3.14
```

## 3.2. Develop a program that receives a real number and precision as input and prints the number with the specified precision to the console.

**Input:** Two numbers, x (maximum precision is 6) and n (0 <= n <= 100)

```
3.14 6
```

**Output:** Number x with precision n

```
3.140000
```

## 3.3. Write a program to read a string containing spaces and then print that string. Only use `scanf` and `printf`.

**Input:** String (1 - 100 characters)

```
Tran Quang Huy 20210428 ET1-05 - K66 GPA: 2.5
```

**Output:** Given string

```
Tran Quang Huy 20210428 ET1-05 - K66 GPA: 2.5
```

## 3.4. Write a program to read a string until it reaches a number. Print that string. Only use `scanf` and `printf`.

**Input:** String (1 - 214 characters)

```
Tran Quang Huy 20210428 ET1-05 - K66 GPA: 2.5
```

**Output:** Given string

```
Tran Quang Huy 
```

## 3.5. Write a program to read an HUST Student ID. Print the year that the student started studying at HUST. Only use `scanf` and `printf`. No string processing allowed.

**Input:** HUST Student ID (yyyyxxxx) (yyyy - Year of starting study, xxxx - order)

```
20210428
```

**Output:**  
First line: Year  
Second line: (Year * 2) + (Year % 100);

```
2021
4063
```

## 3.6. Write a program to read a student name and print to console. Only use `scanf` and `printf`. No string processing allowed.

**Input format:**  
Full Name: [Name]

**Input:** A string includes field and content (Maximum 100 characters)
```
Full Name: Tran Quang Huy
```

**Output:** Name of the student

```
Tran Quang Huy
```

## 3.7. Write a program to read student information in CSV format. Print each information on a single line. Only use `scanf` and `printf`.

**Input format**: [Name - max 30 character],[ID - 8 characters],[Class - max 9 character],[Generation - 3 characters],[GPA - float number]  
**Output format**: Name, ID, Class, Generation, GPA on 5 separate lines. Note that GPA should be in `x.xx` format.

**Input:** String (1 - 100 characters)

```
Tran Quang Huy,20210428,ET1-05,K66,2.5
```

**Output:** Each information on a single line

```plaintext
Tran Quang Huy
20210428
ET1-05
K66
2.50
```

## 3.8. Write a program to read a string containing only spaces, lowercase characters, numbers from `0` to `4` and `8`, `'@'` and `'.'`. The string should stop reading when it reaches any other character. Print that string. Only use `scanf` and `printf`.

**Input:** String (1 - 100 characters)

```
tran quang huy huy.tq210428@sis.hust.edu.vn 20210428 et1-05 - k66 gpa: 2.5
```

**Output:** Given string

```
tran quang huy huy.tq210428@sis.hust.edu.vn 20210428 et1
```

## 3.9. Implement a program that prompts the user to enter student information via the console and then prints that information in the following format:

### **Specification**

**Input format:**
- Name: 1 - 30 characters
- ID: 8-digit number `yyyyxxxx`, where `yyyy` indicates the year of enrollment and `xxxx` indicates the order
- Date of birth: `dd-mm-yyyy`
- Field: 1 - 150 characters
- Class: Field code (1 - 5 character), Class number (integer), and Generation (3 character) on separate lines
- GPA: Real number (0 - 4)

**Output format:**

```
Name: [Name]
ID: [ID]
Date of birth: [dd/mm/yyyy]
Field: [Field]
Class: [Field code]-[Class number - format: xx] - [Generation]
GPA: [x.xx]
```

### **Example**

**Input**
```
Tran Quang Huy
20210428
30-08-2003
Electronics and Telecommunication Engineering
ET1
5
K66
2.5
```

**Output**
```
Name: Tran Quang Huy
ID: 20210428
Date of birth: 30/08/2003
Field: Electronics and Telecommunication Engineering
Class: ET1-05 - K66
GPA: 2.50
```