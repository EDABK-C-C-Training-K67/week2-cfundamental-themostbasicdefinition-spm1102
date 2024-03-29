[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/g08unoXJ)
<!--
File: readme.md
Author: Do Viet Dung
Created on: 22/03/2024
Description: [Brief description of the file's purpose]
-->

## Important: Please Add Your Own Report

Welcome to your report file. In the next section, please add your own report below. You can include your analysis, findings, and any relevant information.

Make sure to add your information to the begining of this file.

### Weekly Task Description

You can find the detailed description of the weekly task in the file: [task_description.md](task_description.md).

### Revision Task

For the revision task, please refer to: [revision.md](revision.md).

---

# Week 2 Report
## **Task**
* ~~**Done bài 4-12 của Học C bá đạo.**~~
* ~~**Liệt kê các cách tạo hằng số và khi nào cần sử dụng hằng số.**~~
* ~~**Liệt kê các kiểu dữ liệu kèm khoảng giá trị của nó.
Khi nào xảy ra tràn số và cách kỹ thuật tránh tràn số.**~~
* ~~**Liệt kê các định dạng có thể dùng trong printf (%d, %c,... và các định dạng mở rộng như %.2f, %02d,...).**~~
* ~~**Liệt kê các toán tử, tìm hiểu các toán tử bitwise và phân biệt sự khác nhau giữa "& với &&", "| với ||".**~~
* ~~**Học cách sử dụng git, sau đó tìm hiểu quy trình sử dụng git.**~~
* ~~**(Chỉ làm sau khi xong 1) Tạo acc github và link repo từ local với repo trên github. Phân biệt git và github.**~~
* ~~**Convert các file báo cáo thành định dạng markdown và đặt tên thành README.md**~~
---
## 1. **Done code lecture 4-12 in " Hoc C ba dao"**
## 2. **Constant**
- **Ways of declaration\:**

| **Types** |                       **Usage**                             |           **Syntax**             |
| --------- | ------------------------------------------------------------| ---------------------------------|
|`const`    | Mostly used for storing unchanged value for computing.      |`const<data types><name> = value;`<br><br> `const float pi = 3.14;`|
|`enum`     |Mostly used for setting up different states for a certain object. <br><br> Each variable could be assigned to a certain value and if it is not, its value will start from 0 or the subsequent one of the variable standing right before it.    |`enum<group name>{var_1, var_2,..};` <br><br> `enum months{Jan, Feb, Mar};`<br> `enum months{Jan, Feb=100, Mar};`<br><br>=> Jan = 0, Mar = 101.| 
|`#define`|Used for defining a macro that replaces text before compilation|`#define <name> <value>` <br><br> `#define PI 3.14`<br><br> `#define ll long long int` <br><br>`#define f(i, a, b, c) for (ll i = a; i < b; i += c)`.|

## 3. **Variable**
- **Primitive\:**
  
|  **Types**         |**stdint.h**|**Size**| **Range**                                                                  | **Meaning**  |
| -------------------|------------|--------| ---------------------------------------------------------------------------| -------------|
|   `char`           |   int8_t   |    1   |$-2^7  \to 2^7 -1$                                                         |integer, char |
|`unsigned char`     | uint8_t    |1       |$0 \to 2^8$                                                                |integer, char |
|`short`             | int16_t    |2       |$-2^{15} \to 2^{15}-1$                                                     |integer       |
|`unsigned short`    | uint16_t   |2       |$0 \to 2^{16}$                                                             |integer       |
|`int`               |int32_t     |4       |$-2^{31}\to 2^{31}-1$                                                       |integer       |
|`unsigned int`      | uint32_t   |4       |$0 \to 2^{32}$                                                              |integer       |
|`long`              |            |4       |$-2^{31}\to2^{31}-1$                                                        |integer       |
|`unsigned long`     |            |4       |$0 \to 2^{32}$                                                              |integer       |
|`long long`         |int64_t     |8       |$-2^{63}\to 2^{63}-1$                                                       |integer       |
|`unsigned long long`|uint64_t    |8       |$0 \to 2^{64}$                                                              |integer       |
|`float`             |            |4       |$1.175494 × 10^{-38} \to 3.4 × 10^{38}$                                     |real number   |
|`double`            |            |8       |$4.94065645841246544 × 10^{-324} \to 1.79769313486231570 × 10^{308}$        |real number   |
|`long double`       |            |10      |$3.36210314311209350626 × 10^{-4932} \to 1.18973149535723176502 × 10^{4932}$| real number  |

- **Derived data types\:** these types are derived from primitive data ones. For example, arrays, structure, pointer, union, references, functions.
  ```c
  //struct
  struct person{
    char name[50];
    int age;
  };

  //union
  union data{
    int value;
    float average;
    char name[50];
  };
  ```
- **User-defined data types\:** these are defined by the programmer to meet specific requirements. They are not part of the built-in types provided by the language. For example, `class`, `enum`, `typedef`\:
  ```c
  //class
  class Circle {
  private:
      double radius;
  public:
      void setRadius(double r) {
          radius = r;
      }
      double getArea() {
          return 3.14 * radius * radius;
      }
  };

  // enum
  enum Direction {North, East, South, West};

  //typedef
  typedef int Length;
  Length distance = 100; // equivalent to int distance = 100;
  ```

  
- **Note\:**

| **Types**            | **16 bits** | **32 bits** | **64 bits**       |
|:--------------------:| ----------- | ----------- | ----------------- |
|   `int`              | 2 bytes     | 4bytes      | 4 bytes / 8 bytes |
|`pointer`             |             |4 bytes      | 8 bytes           |
|`size_t and Ptrdiff_t`|             |4 bytes      |8 bytes            |      

Besides, `long double`, `struct`, `union` and `bit-fields` are also changeable according to different combinations of compiler, platform, CPU architecture and library implementation.
<br>
Example printing out size of data types:

![alt text](image-18.png)
  
- **Storage mechanism\:**
  - **Unsigned Integers\:**
    - Represent non-negative whole numbers and stored in binary format using a fixed number of bits.
  ![alt text](image-8.png)
  - **Signed Integers\:**
    - Represent both positive and negative whole numbers and stored using a system called Two's complement.
    - In Two's complement, the leftmost bit (most significant bit) is reserved to represent the sign of the number (0 for positive, 1 for negative), while the remaining bits represent the magnitude of the number.
    ![alt text](image-17.png)
  - **Floating-Point Numbers\:**
    - Represent real numbers (numbers with fractional parts) and stored using a format specified by the IEEE 754 standard.
    - In this format, a floating-point number consists of three parts: 
      - The sign bit represents the sign of the number (0 for positive, 1 for negative).
      - The exponent represents the scale of the number.
      - The mantissa represents the significant digits of the number.
      - There are three kinds: single precision(32 bits), double precision (64 bits) and extended double precision (80 bits).
    ![alt text](image-24.png)

- **Static, Extern, Volatile**
  - **Static\:** 
    - When applied to variables: It specifies that the variable has a local scope within a function or file scope (global/static variable) depending on where it's declared. If a variable is declared static within a function, its value persists between function calls. Out of the function, the variable will be eliminated.
    <br>
    - When applied to functions: It specifies that the function is only visible within the file it is declared in and when it's out of the function, the variable will be eliminated. It limits the scope of the function to the file it's defined in. 
  - **Extern\:** 
    - It is used to declare a variable or function that is defined in another file or in the main program. It allows users to use variables or functions across different files.
    <br>
    - When you declare a variable as extern, you're telling the compiler that the variable is defined elsewhere, and the linker will resolve the actual definition during linking.
      ```c
      // In file extern.h
      extern int var;

      // In file extern.c
      int var
      ```
  - **Volatile\:**
    - It tells the compiler that the variable can be changed unexpectedly. It prevents the compiler from performing certain optimizations on the variable.
    <br>
    - Typically, volatile is used for variables that can be changed by outside sources such as hardware, interrupts, or concurrently running threads.
    <br>
    - When the program is compiled, the compiler can remove or cache the variable that is unnecessary. `volatile` keyword will tell compiler that this variable should remain untouched, and whenever the value of that variable is changed, the program will load the new value of that variable immediately
## 4. **Overflow**

- **Definition\:**  phenomenon happens when users attempt to store inside a variable a value that is larger than the maximum value that the variable can hold.
- **Example\:**
  Integer oveflow with addition\:

 ![alt text](image-19.png)

 Integer overflow with multiplication\:

 ![alt text](image-20.png)
 
 Integer oveflow with conversion\:

 ![alt text](image-21.png)
 
 ![alt text](image-22.png)
- **Ways to avoid overflow\:** 
  - Add condition to check the overflow:
  
   ![Addition](image.png)
   ![Subtraction](image-1.png)
   ![Multiplication](image-2.png)
   ![Division](image-3.png)
   - Bounding check\: 
  
    ![alt text](image-23.png)
  - Use available function of GCC compiler:
  
   ![alt text](image-4.png)
## 5. **Format specifier**

| **Types**          | **Format specifier**   |
| ------------------ | :--------------------: |
| char               | `%c `                  |
| unsigned char      | `%c`                   |
| short              | `%hd `                 |
| string             | `%s `                  |
| int                | `%d`                   |
| unsigned int       |` %u`                   |
| long               | `%li `                 |
| unsigned long      | `%lu`                  |
| long long          | `%lli`                 |
| unsigned long long | `%llu `                |
| float              | `%f `                  |
| double             | `%lld`                 |
| long double        | `%lf`                  |

- **Extended format specifier\:**
  - `%m.nf`
    + `%f`: `float` and this can be changed into `%lf` for `double`,...
    + n\: the number of digits after the commas.
    + m\: the amount of space used for the output.
      - m \< 0\:using m space from the left to the right for the output
      - m \>\: using m space from the right to the left for the output.
- **Special specifier format\:**
  - ` %[^\n]`
  This specifier allows `scanf` to scan character until it encounters a newline character (`\n`)\:
    + `^`\: used to stop reading
      
      ![alt text](image-15.png)
      ![alt text](image-16.png)
  - **`%.*f`\:**
    - `.` is used to specify precision.
    - `*` is a placeholder for an integer argument that specifies the precision.
    ![alt text](image-7.png)
    - `*`\: sometimes can be used to exclude input in `scanf`
      ```c
      int num;
      scanf("%*d %d", &num);
      ```
- **Printf and Scanf\:**
  - **Printf\:**  is a standard library function in C used for formatted output. It returns the value in format that is declared after the character `%`.
    Ex\: `%c` returns to character or number, `%d` returns to integer,...
    - Escape sequences\:
      -  `\n` for a newline
      -  `\t` for a tab
      -  `\b` for a backspace
      -  `\` for a backslash character
      -  `'`  and `"` for single and double quote respectively
      -  `\r` for moving the cursor to the beginning of the line
      -  `\uXXXX` or `\u{XXXXX}` for representing Unicode characters by their hexadecimal code points.
  - **Scanf\:** is a standard library function in C used for formatted input. It reads input from the standard input (usually the keyboard) and stores the results into variables specified by the format string.
    - **Inputting Strings with Spaces using scanf:**

      To input strings with spaces using scanf, you can use the `%[^\n]` format specifier, which reads characters until a newline character is encountered.
## 6. **Operator**
-  **Arithmetic operator\:** 
  
| **Operator** | **Meaning**             | **Example** |
|:------------:| ----------------------- |:-----------:|
|      `+`     | Addition                | a + b       |
|      `-`     | Subtraction             | a - b       |
|      `*`     | Multiplication          | a * b       |
|      `/`     | Division                | a / b       |
|       `%`    | Remainer after division | a % b       |

- **Increment and decrement**
   
  | **Operator** | **Meaning**     |     **Example**    |
  |:------------:| --------------- |:------------------:|
  |      `++`    | Increasing by 1 | a ++ <=> a = a + 1 |
  |      `--`    | Decreasing by 1 |  a -- <=> a = a -1 |
  - **Differnce between prefixes and suffixes**
  Ex\: 	a=5; b=6;
	b = a + + + 1 ; => b = 12
	b = + + a + 1;  => b = 11
- **Assignment operator**

    | Operator | Short form | Complete form |
    |:--------:| ---------- | ------------- |
    |    `=`   | a = b      | a = b         |
    |   `+= `  | a += b     | a = a + b     |
    |   `-=`   | a -= b     | a = a - b     |
    |   `*=`   | a *= b     | a = a * b     |
    |   `/=`   | a /= b     | a = a / b     |
    |   `%=`   | a %= b     | a = a % b     |

- **Relational operator\:**

    | Operator | Meaning      | Example    |
    |:--------:| ------------ | ---------- |
    |   `==`   | Equal        | 7 == 3 ~ 0 |
    |   ` >`   | Greater than | 7 > 3 ~ 1  |
    |  `\<`    |Smaller than  |  7 \< 3 ~ 0  |
    |  `>=`    |Greater than or equal to |  7 >= 3 ~ 1   |
    |   `\<=`  |Smaller than or equal to| 7 \<= 3 ~ 0    |
    |   `!=`   |Different  |  7 != 3 ~ 1   |
- **Logical operator\:**
  - **Logical AND (`&&`)\:** is a Boolean operation that evaluates two conditions to determine whether both are true. The result is true only if both operands are true; otherwise, it is false.
   ![alt text](image-5-1.png)
  - **Logical OR(`||`)\:** return the right-hand side operand if the left one is non-zero. Otherwise, it returns the left-hand side itself.
  
    ![alt text](image-6-1.png)

  - **Operator NOT (`!`)\:** return 1 when  the operand is FALSE and vice versa.
- **Bitwise operator\:**
  - **Bitwise AND(`&`)\:** used to perform a bitwise AND operation between the corresponding bits of two integer operands by comparing the bits at each position. It returns an integer result where each bit position contains the result of the OR operation on the corresponding bits of the operands.
 ![alt text](image-10.png)
   - **Bitwise OR(`|`)\:** used to perform a bitwise OR operation between the corresponding bits of two integer operands by comparing the bits at each position. It returns an integer result where each bit position contains the result of the OR operation on the corresponding bits of the operands.
  ![alt text](image-9.png)
  - **Bitwise XOR(`^`)\:** return 1 if the corresponding bits of two operands are opposite.
  ![alt text](image-11.png)
  - **Bitwise complement\:** a unary operator works on only one operand by changing 1 to 0 and 0 to 1.
  ![alt text](image-12.png)
  - **Shift operator\:**
    - Right shift operator (`>>`): shifts all bits towards right by certain number of specified bits.
    ![alt text](image-13.png)
    - Left shift operator(`<<`): shifts all bits towards left by certain number of specified bits.
    ![alt text](image-14.png)
- **Difference between logical AND and bitwise AND\:**

| Aspect           | Bitwise AND (`&`)                                            | Logical AND (`&&`)                                          |
| ---------------- | ------------------------------------------------------------ | ----------------------------------------------------------- |
| Operand Type     | Operates on integer operands (integral types).               | Operates on boolean operands (`int`, `char`, `bool`, etc.). |
| Usage            | Performs bitwise AND operation between corresponding bits.   | Performs logical AND operation between boolean expressions. |
| Result           | Returns an integer with bits set based on the AND operation. | Returns a boolean (`true` or `false`) based on logical AND. |
| Short-circuiting | Does not perform short-circuit evaluation.                   | Performs short-circuit evaluation.                          |
| Evaluation       | Both operands are always evaluated.                          | Right operand is only evaluated if left operand is `true`.  |
| Example          | `int result = num1 & num2;`                                  | `if (condition1 && condition2) { /* code */ }`              |

=> We can not interchange `&` and `&&` for each other. Otherwise, it could lead to serious error.
# 6. ASCII
- **Definition\:** ASCII stands for American Standard Code for Information Interchange. It's a character encoding standard that assigns numerical values to characters. ASCII codes represent text in computers, communications equipment, and other devices that use text.
  <br>Here are some examples of characters in ASCII table:

| ASCII | ASCII (Decimal) | ASCII (Hexadecimal) | Character | ASCII | ASCII (Decimal) | ASCII (Hexadecimal) | Character |
|-------|-----------------|---------------------|-----------|-------|-----------------|---------------------|-----------|
|   0   |        0        |         00          |    NUL    |  64   |        64       |         40          |     @     |
|   1   |        1        |         01          |    SOH    |  65   |        65       |         41          |     A     |
|   2   |        2        |         02          |    STX    |  66   |        66       |         42          |     B     |
|   3   |        3        |         03          |    ETX    |  67   |        67       |         43          |     C     |
|   4   |        4        |         04          |    EOT    |  68   |        68       |         44          |     D     |
|   5   |        5        |         05          |    ENQ    |  69   |        69       |         45          |     E     |
|   6   |        6        |         06          |    ACK    |  70   |        70       |         46          |     F     |
|   7   |        7        |         07          |    BEL    |  71   |        71       |         47          |     G     |
|   8   |        8        |         08          |    BS     |  72   |        72       |         48          |     H     |
|   9   |        9        |         09          |    HT     |  73   |        73       |         49          |     I     |
|  10   |       10        |         0A          |    LF     |  74   |        74       |         4A          |     J     |
|  11   |       11        |         0B          |    VT     |  75   |        75       |         4B          |     K     |
|  12   |       12        |         0C          |    FF     |  76   |        76       |         4C          |     L     |
|  13   |       13        |         0D          |    CR     |  77   |        77       |         4D          |     M     |
|  14   |       14        |         0E          |    SO     |  78   |        78       |         4E          |     N     |
|  15   |       15        |         0F          |    SI     |  79   |        79       |         4F          |     O     |
|  16   |       16        |         10          |    DLE    |  80   |        80       |         50          |     P     |
|  17   |       17        |         11          |    DC1    |  81   |        81       |         51          |     Q     |
|  18   |       18        |         12          |    DC2    |  82   |        82       |         52          |     R     |
|  19   |       19        |         13          |    DC3    |  83   |        83       |         53          |     S     |
|  20   |       20        |         14          |    DC4    |  84   |        84       |         54          |     T     |
|  21   |       21        |         15          |    NAK    |  85   |        85       |         55          |     U     |
|  22   |       22        |         16          |    SYN    |  86   |        86       |         56          |     V     |
|  23   |       23        |         17          |    ETB    |  87   |        87       |         57          |     W     |
|  24   |       24        |         18          |    CAN    |  88   |        88       |         58          |     X     |
|  25   |       25        |         19          |    EM     |  89   |        89       |         59          |     Y     |
|  26   |       26        |         1A          |    SUB    |  90   |        90       |         5A          |     Z     |
|  27   |       27        |         1B          |    ESC    |  91   |        91       |         5B          |     [     |
|  28   |       28        |         1C          |    FS     |  92   |        92       |         5C          |     \     |
|  29   |       29        |         1D          |    GS     |  93   |        93       |         5D          |     ]     |
|  30   |       30        |         1E          |    RS     |  94   |        94       |         5E          |     ^     |
|  31   |       31        |         1F          |    US     |  95   |        95       |         5F          |     _     |
|  32   |       32        |         20          |  (space)  |  96   |        96       |         60          |     `     |
|  33   |       33        |         21          |     !     |  97   |        97       |         61          |     a     |
|  34   |       34        |         22          |     "     |  98   |        98       |         62          |     b     |
|  35   |       35        |         23          |     #     |  99   |        99       |         63          |     c     |
|  36   |       36        |         24          |     $     | 100   |       100       |         64          |     d     |
|  37   |       37        |         25          |     %     | 101   |       101       |         65          |     e     |
|  38   |       38        |         26          |     &     | 102   |       102       |         66          |     f     |
|  39   |       39        |         27          |     '     | 103   |       103       |         67          |     g     |
|  40   |       40        |         28          |     (     | 104   |       104       |         68          |     h     |
|  41   |       41        |         29          |     )     | 105   |       105       |         69          |     i     |
|  42   |       42        |         2A          |     *     | 106   |       106       |         6A          |     j     |
|  43   |       43        |         2B          |     +     | 107   |       107       |         6B          |     k     |
|  44   |       44        |         2C          |     ,     | 108   |       108       |         6C          |     l     |
|  45   |       45        |         2D          |     -     | 109   |       109       |         6D          |     m     |
|  46   |       46        |         2E          |     .     | 110   |       110       |         6E          |     n     |
|  47   |       47        |         2F          |     /     | 111   |       111       |         6F          |     o     |
|  48   |       48        |         30          |     0     | 112   |       112       |         70          |     p     |
|  49   |       49        |         31          |     1     | 113   |       113       |         71          |     q     |
|  50   |       50        |         32          |     2     | 114   |       114       |         72          |     r     |
|  51   |       51        |         33          |     3     | 115   |       115       |         73          |     s     |
|  52   |       52        |         34          |     4     | 116   |       116       |         74          |     t     |
|  53   |       53        |         35          |     5     | 117   |       117       |         75          |     u     |
|  54   |       54        |         36          |     6     | 118   |       118       |         76          |     v     |
|  55   |       55        |         37          |     7     | 119   |       119       |         77          |     w     |
|  56   |       56        |         38          |     8     | 120   |       120       |         78          |     x     |
|  57   |       57        |         39          |     9     | 121   |       121       |         79          |     y     |
|  58   |       58        |         3A          |     :     | 122   |       122       |         7A          |     z     |
|  59   |       59        |         3B          |     ;     | 123   |       123       |         7B          |     {     |
|  60   |       60        |         3C          |     .     | 124   |       124       |         7C          |     \|    |
|  61   |       61        |         3D          |     =     | 125   |       125       |         7D          |     }     |
|  62   |       62        |         3E          |     >     | 126   |       126       |         7E          |     ~     |
|  63   |       63        |         3F          |     ?     | 127   |       127       |         7F          |    DEL    |


- **Device control codes, printable codes on the console, and extended codes.**
  - **Device Control Codes\:**
    - These codes are non-printable and are used to control peripheral devices such as printers, displays, and communication equipment.
    - They include characters like NUL (0x00), SOH (0x01), STX (0x02), ETX (0x03), and so on up to US (0x1F).
    - Device control codes are typically used for signaling and control purposes rather than displaying information.
  - **Printable Codes on the Console\:**
    - These codes represent characters that are printable and can be displayed on the console or terminal.
    - They include alphanumeric characters, punctuation marks, symbols, and whitespace characters.
    - Start from the space character (0x20) up to the tilde character (0x7E).
    <br>Examples\:(A-Z, a-z), digits (0-9), punctuation marks (!, ", #, $, ...), and whitespace characters (space, tab, newline).
  - **Extended Codes\:**
    - Extended codes are characters that extend beyond the standard ASCII character set (codes 0 to 127).
    - Including characters from different languages, special symbols, and graphical representations.
    <br>Examples\: accented letters, currency symbols, mathematical symbols, and emoji.
