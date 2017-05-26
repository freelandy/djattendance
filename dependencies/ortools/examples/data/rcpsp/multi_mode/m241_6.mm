************************************************************************
file with basedata            : cm241_.bas
initial value random generator: 180216995
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  139
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        9       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           8  14  15
   3        2          1          17
   4        2          3           5   6  11
   5        2          3           8  12  15
   6        2          3           7  13  15
   7        2          2           9  14
   8        2          2          10  13
   9        2          2          10  12
  10        2          1          16
  11        2          3          12  13  14
  12        2          1          17
  13        2          2          16  17
  14        2          1          16
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    8    6    7
         2    10       6    0    4    7
  3      1     8       5    0    9    3
         2    10       4    0    8    1
  4      1     3       2    0    9    8
         2     9       0    5    6    8
  5      1     2       0    9    6    5
         2    10       3    0    5    4
  6      1     2       0    8    5    8
         2     8       0    7    5    5
  7      1     2       0    9    8    8
         2     8       0    4    6    7
  8      1     3       0    6    2    7
         2     9       7    0    1    6
  9      1     1       3    0    3    8
         2     9       0    9    1    8
 10      1     4       9    0    7    7
         2     9       0    8    2    2
 11      1     4       6    0    6    8
         2     9       4    0    4    3
 12      1     6       0    5    5    3
         2     8       8    0    5    3
 13      1     1       7    0    9   10
         2     7       7    0    8    5
 14      1     8       0    7    5    8
         2     8       0    7    6    4
 15      1     2       0    6    7    6
         2     9       1    0    5    4
 16      1     2       0   10    3    2
         2     6       9    0    3    2
 17      1     7       7    0    5    9
         2    10       0    7    4    8
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   10   11   84   92
************************************************************************
