************************************************************************
file with basedata            : mf48_.bas
initial value random generator: 1198287644
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  236
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       27        9       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  10
   3        3          3           7  17  29
   4        3          3           8   9  19
   5        3          1          14
   6        3          2           9  23
   7        3          3          15  18  24
   8        3          1          12
   9        3          2          13  17
  10        3          2          11  16
  11        3          1          21
  12        3          3          23  24  26
  13        3          3          21  26  29
  14        3          3          20  22  28
  15        3          2          27  28
  16        3          1          25
  17        3          1          20
  18        3          1          21
  19        3          3          20  22  24
  20        3          3          25  26  30
  21        3          2          28  31
  22        3          3          23  27  30
  23        3          1          29
  24        3          1          25
  25        3          1          27
  26        3          1          31
  27        3          1          31
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
  2      1     2       6    8    3    9
         2     2       7    7    3    9
         3     8       4    6    3    8
  3      1     8       8    7    2    7
         2     9       5    7    1    4
         3     9       3    7    2    5
  4      1     3       4    6    5    7
         2     5       4    6    5    5
         3     7       3    5    4    4
  5      1     4       6    8    6    9
         2     5       4    8    6    9
         3     8       3    4    4    7
  6      1     2       6    3    9    6
         2     5       6    3    8    5
         3     7       5    2    8    3
  7      1     3       5    7    9    6
         2     5       5    5    8    6
         3     8       1    4    7    6
  8      1     3      10   10    7    2
         2     4       7    9    6    2
         3     5       6    7    4    1
  9      1     1       7    3    8    7
         2     2       5    3    7    4
         3     6       4    2    6    3
 10      1     1       7    9    5    6
         2     3       7    8    2    3
         3     6       3    7    2    2
 11      1     5       9    5    5    9
         2     6       4    5    5    9
         3    10       1    3    5    9
 12      1     1       9    9    9   10
         2     6       8    5    9   10
         3     8       6    3    8    9
 13      1     2       8    6    8    7
         2    10       7    3    8    6
         3    10       7    6    7    7
 14      1     7       7    9    9    4
         2     8       6    9    6    4
         3     9       3    9    6    2
 15      1     4       5    4    7    6
         2     7       5    2    6    3
         3     9       4    1    3    1
 16      1     1       8    3    4    7
         2     5       8    2    3    6
         3     9       8    2    2    5
 17      1     2       4    5    3    9
         2     6       3    5    3    8
         3     9       3    5    2    7
 18      1     6       8    8    7    7
         2     6       7    9    6    6
         3     7       6    6    3    6
 19      1     4       9    6    3    5
         2     9       6    6    3    2
         3    10       4    6    2    2
 20      1     4       9    6    8    4
         2     6       7    5    8    3
         3     8       6    5    7    2
 21      1     1       9    6    4    7
         2     9       9    6    4    3
         3    10       9    5    3    2
 22      1     1       5    5    5   10
         2     5       3    5    4    7
         3     6       1    3    1    6
 23      1     3       8    7    9    2
         2     4       6    4    7    2
         3     6       3    3    4    2
 24      1     6       8    6    6    7
         2     6       8    7    5    6
         3     7       7    3    3    2
 25      1     1       6    8   10    2
         2     3       6    5   10    1
         3    10       5    2   10    1
 26      1     2       5    9    6    8
         2     3       4    8    5    8
         3     5       3    8    2    8
 27      1     5       7    2    7    9
         2     5       9    2    6    8
         3    10       7    1    5    8
 28      1     7       3    9    8    6
         2    10       3    4    5    4
         3    10       3    5    3    5
 29      1     2       8    9    8    4
         2     5       6    5    6    3
         3     5       7    1    5    4
 30      1     2       6    9    3    5
         2     4       6    9    2    5
         3     7       5    9    1    3
 31      1     2       9    4   10    4
         2     5       8    4   10    4
         3     7       5    3    9    3
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   56   42  162  160
************************************************************************
