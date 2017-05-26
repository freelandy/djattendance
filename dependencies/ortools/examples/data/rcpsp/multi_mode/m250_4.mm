************************************************************************
file with basedata            : cm250_.bas
initial value random generator: 1034290667
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       20       10       20
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          2           7  16
   3        2          3           8  10  11
   4        2          3           5   6   9
   5        2          3          11  13  14
   6        2          3           7  11  12
   7        2          2          15  17
   8        2          3           9  13  14
   9        2          1          16
  10        2          1          15
  11        2          1          16
  12        2          2          13  14
  13        2          2          15  17
  14        2          1          17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       1    0    8    3
         2     9       0    7    7    3
  3      1     6       0    3    5    6
         2    10       8    0    5    5
  4      1     2       0    5    8    8
         2     3       7    0    2    6
  5      1     2       0   10    4    3
         2     2       2    0    5    5
  6      1     5       5    0    7    9
         2    10       3    0    7    3
  7      1     8       1    0    6    2
         2     8       6    0    4    2
  8      1     3       0    4   10   10
         2     9       7    0    5    3
  9      1     3       7    0    9    8
         2     7       5    0    7    3
 10      1     9       0    4    8    4
         2     9       0    5    8    2
 11      1     4       0    2    6    7
         2     7       0    1    4    4
 12      1     1       0    4    2    8
         2     6       0    3    1    6
 13      1     8       0    6    2    9
         2     9       5    0    1    6
 14      1     1       5    0    7    2
         2     3       0    7    6    1
 15      1     2       0    3    6    7
         2     9       0    3    6    5
 16      1     1       6    0    7    7
         2     9       6    0    5    6
 17      1     3       8    0    6    7
         2     7       5    0    5    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   12   13   96   92
************************************************************************
