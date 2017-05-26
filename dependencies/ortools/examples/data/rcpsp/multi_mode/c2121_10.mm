************************************************************************
file with basedata            : c2121_.bas
initial value random generator: 1753692518
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        1       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          3           5   9  10
   4        3          3           6   8  10
   5        3          3           8  11  12
   6        3          3          11  12  16
   7        3          3           8   9  11
   8        3          3          13  14  17
   9        3          2          14  15
  10        3          3          12  13  14
  11        3          2          13  17
  12        3          2          15  17
  13        3          1          15
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       5    9    6    0
         2     5       4    4    6    0
         3     8       2    1    0    7
  3      1     2       4    6    0    6
         2     5       3    5    7    0
         3     6       3    3    0    4
  4      1     4       7    3    0    7
         2     6       6    2    2    0
         3     9       4    1    0    5
  5      1     3       8    8    9    0
         2     8       5    7    8    0
         3     9       4    7    7    0
  6      1     3       8    7    0    8
         2     8       7    7    3    0
         3     9       6    7    0    3
  7      1     2      10    5    6    0
         2     6       5    5    5    0
         3     7       5    3    3    0
  8      1     4       7    9    0    6
         2     5       5    9    4    0
         3     6       4    9    0    3
  9      1     2       9    8    0   10
         2     6       9    8    2    0
         3     8       8    8    0    9
 10      1     4       6    8    0    6
         2     4       5    7    7    0
         3     5       4    7    5    0
 11      1     1       8    1    0    9
         2     3       6    1    0    9
         3     9       5    1    0    8
 12      1     1      10    6    0    8
         2     3      10    6    8    0
         3     9      10    3    0    7
 13      1     4       8    2    7    0
         2     9       8    2    6    0
         3    10       8    2    0    6
 14      1     5       5    8    0    1
         2     5       5    7   10    0
         3     6       5    4    0    1
 15      1     1       7    9    0    9
         2     5       6    7    0    6
         3     7       4    6    5    0
 16      1     6       3    4    6    0
         2     8       3    3    4    0
         3    10       3    3    0    8
 17      1     5       2    8    0    8
         2     9       2    7    0    7
         3    10       2    6    7    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   15   69   76
************************************************************************
