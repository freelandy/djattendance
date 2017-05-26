************************************************************************
file with basedata            : mf3_.bas
initial value random generator: 930096617
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  220
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       29       28       29
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  13  28
   3        3          1          19
   4        3          3           5   6   9
   5        3          2          10  12
   6        3          3          12  14  16
   7        3          1           8
   8        3          3          11  18  21
   9        3          2          13  22
  10        3          2          23  27
  11        3          2          16  24
  12        3          2          15  21
  13        3          2          29  30
  14        3          2          19  29
  15        3          3          17  22  28
  16        3          2          20  23
  17        3          2          18  24
  18        3          2          23  27
  19        3          2          26  31
  20        3          2          22  25
  21        3          2          24  31
  22        3          2          26  31
  23        3          1          25
  24        3          2          25  27
  25        3          1          26
  26        3          1          30
  27        3          1          29
  28        3          1          30
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       4    0    5    0
         2     5       0    3    4    0
         3     6       0    1    0    6
  3      1     1       0    3    9    0
         2     3       0    3    8    0
         3     5       0    2    8    0
  4      1     7       0    7    4    0
         2     9       0    5    0    2
         3    10       0    2    1    0
  5      1     5       7    0    0   10
         2     5       0    7    6    0
         3    10       0    3    6    0
  6      1     1       0   10    9    0
         2     3       8    0    8    0
         3     5       8    0    0    3
  7      1     5       9    0    0    5
         2     7       8    0    0    5
         3     8       0    7    0    4
  8      1     2       0    5    3    0
         2     6       0    4    0    9
         3     7       0    4    0    4
  9      1     1       0    8    0    7
         2     4       2    0    0    7
         3     8       0    8    0    4
 10      1     3       1    0    0    5
         2     8       1    0    0    4
         3     8       1    0    4    0
 11      1     3       0    6    4    0
         2     6       7    0    0    6
         3     9       0    6    3    0
 12      1     1       0   10    0    5
         2     4       7    0    6    0
         3     6       0    9    4    0
 13      1     2       6    0    0    4
         2     4       5    0    0    3
         3     5       0    9    0    2
 14      1     1       7    0    5    0
         2     4       0    1    0    2
         3     9       5    0    0    2
 15      1     2       7    0    0    9
         2     7       5    0    0    9
         3     8       0    9    8    0
 16      1     3       7    0    6    0
         2     6       5    0    0    3
         3     6       0    3    0    3
 17      1     4       0   10    0    2
         2     6       0    9    8    0
         3     7       0    8    8    0
 18      1     1       0    2    0    7
         2     4       0    1    2    0
         3     4       0    1    0    5
 19      1     6       0    3    3    0
         2     8       9    0    3    0
         3     9       0    2    2    0
 20      1     4       0    1    0    5
         2     5       7    0    0    4
         3     8       0    1    0    4
 21      1     3       0    3    7    0
         2     6       0    2    6    0
         3    10       2    0    0    9
 22      1     1       2    0    0    8
         2     7       0    4    0    6
         3     9       2    0    5    0
 23      1     1       0    6   10    0
         2     8       0    3    0    4
         3     9       0    3    3    0
 24      1     2       7    0    4    0
         2     7       4    0    0    8
         3    10       2    0    4    0
 25      1     5       5    0    4    0
         2     7       0    7    0    4
         3    10       5    0    2    0
 26      1     2       0    6    7    0
         2     7       0    3    7    0
         3     7       8    0    7    0
 27      1     2       7    0    0    5
         2     3       0    7    0    3
         3     4       1    0    3    0
 28      1     1       0    9    0    7
         2     1       0    7    0    8
         3     2       0    3    3    0
 29      1     3       0    7    8    0
         2     3       0    5    0    6
         3    10       5    0    0    4
 30      1     1       0    9    0    7
         2     4       0    4    0    4
         3     4       5    0    4    0
 31      1     1      10    0    3    0
         2     2       0    2    0    5
         3     7      10    0    0    4
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   26   48   49
************************************************************************
