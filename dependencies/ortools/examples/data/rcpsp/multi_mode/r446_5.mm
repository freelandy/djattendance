************************************************************************
file with basedata            : cr446_.bas
initial value random generator: 132973858
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       13       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2          12  13
   3        3          3           8  11  13
   4        3          1           5
   5        3          3           6   7  11
   6        3          2          10  16
   7        3          3           8   9  13
   8        3          2          15  16
   9        3          2          10  12
  10        3          2          14  17
  11        3          2          12  14
  12        3          2          16  17
  13        3          2          14  17
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     5       9    3    4    8    8    6
         2     5       9    3    5    8    6    6
         3     9       9    2    4    4    4    6
  3      1    10       1    4    4    5    6    3
         2    10       2    2    4    8    5    8
         3    10       3    3    4    6    7    5
  4      1     3       9    7    6    8    8    8
         2     6       7    6    4    5    8    6
         3     9       1    6    4    5    6    5
  5      1     2       4    3    9    8    6    7
         2     3       4    3    8    7    3    6
         3     7       3    1    8    7    1    4
  6      1     4       9    4    9   10    6    8
         2     5       4    3    9    7    6    6
         3    10       1    3    9    6    1    3
  7      1     3       3    2    4    6    9    1
         2     5       3    2    4    5    8    1
         3     6       2    2    4    3    4    1
  8      1     2       9    7    8    8    5    8
         2     6       7    6    7    7    5    5
         3     9       6    1    6    4    4    3
  9      1     1       9    8    7    4    3    9
         2     4       9    6    5    4    2    5
         3     6       6    5    5    3    2    3
 10      1     3       4   10    8    8    4    8
         2     6       3    9    7    7    3    7
         3     7       3    7    7    5    2    7
 11      1     3      10    5    6   10    6    3
         2     5       7    4    5    9    5    3
         3     9       3    2    5    7    3    2
 12      1     1       6    1    5    4    7    5
         2     3       5    1    4    3    5    2
         3     4       4    1    2    2    3    1
 13      1     2       6    4    9    9    7    3
         2     8       3    2    9    9    5    2
         3     9       1    2    8    8    1    2
 14      1     5       7    6    9   10    2    9
         2     6       7    5    8    6    2    8
         3     9       6    3    8    5    2    5
 15      1     3      10    7    3    9    8    6
         2     8       9    6    2    6    6    6
         3     9       8    4    2    4    4    5
 16      1     1       9    6   10    2    7    7
         2     2       9    6    8    2    4    6
         3     6       9    6    7    1    3    5
 17      1     1       3    6    7    3    5    6
         2     1       3    6    6    3    9    6
         3     8       2    2    2    3    4    6
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   19   17   20   22   76   82
************************************************************************
