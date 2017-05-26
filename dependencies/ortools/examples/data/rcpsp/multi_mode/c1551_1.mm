************************************************************************
file with basedata            : c1551_.bas
initial value random generator: 7897
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20        0       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5  10  14
   3        3          1           6
   4        3          1           7
   5        3          3          12  13  15
   6        3          2           8  10
   7        3          1          13
   8        3          2           9  11
   9        3          2          13  17
  10        3          1          17
  11        3          1          16
  12        3          1          17
  13        3          1          16
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    6    8    5
         2     5       6    0    5    4
         3    10       5    0    3    1
  3      1     1       4    0    7    6
         2     2       4    0    7    4
         3     9       3    0    6    3
  4      1     1       0    1    6    6
         2     1       3    0    6    8
         3     8       0    1    2    5
  5      1     5       5    0    5    6
         2     9       0   10    3    5
         3     9       5    0    2    5
  6      1     2       1    0    9    5
         2     2       2    0    7    6
         3     7       0    6    4    4
  7      1     2       7    0    8    5
         2     4       3    0    7    5
         3    10       0    9    7    2
  8      1     1       6    0    7    4
         2     6       0    2    4    3
         3     9       0    2    2    2
  9      1     1       0    7    5    8
         2     4       0    4    4    5
         3    10       9    0    1    3
 10      1     1       0    6    8    7
         2     2       0    5    7    6
         3     9       3    0    4    6
 11      1     1       4    0    8   10
         2     1       0   10    9    9
         3     3       0    9    6    6
 12      1     4       0    8    5   10
         2     6       0    4    2    5
         3     6       8    0    3    3
 13      1     7       9    0    9    5
         2     8       9    0    8    2
         3    10       0    7    6    2
 14      1     1       0    4    6    5
         2     8       0    3    6    3
         3    10       7    0    6    1
 15      1     1       4    0    3    5
         2     3       3    0    3    2
         3     3       0    1    1    1
 16      1     5       4    0    9    4
         2     6       0    7    8    4
         3    10       0    5    6    3
 17      1     4       0    7    5    6
         2     5       9    0    5    5
         3     6       4    0    4    5
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   21   22   97   88
************************************************************************
