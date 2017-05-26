************************************************************************
file with basedata            : c1557_.bas
initial value random generator: 8061
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  144
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       14       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1          13
   3        3          3           5   6   7
   4        3          1           9
   5        3          2          12  15
   6        3          1          15
   7        3          3           8  11  13
   8        3          3          10  12  14
   9        3          1          14
  10        3          1          16
  11        3          1          14
  12        3          2          16  17
  13        3          1          15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       7    0    7    4
         2     6       5    0    7    4
         3     9       0    5    7    1
  3      1     1       6    0   10    7
         2     5       6    0   10    5
         3     7       5    0    9    3
  4      1     1       5    0    9    9
         2     2       5    0    9    5
         3    10       3    0    8    4
  5      1     1       7    0    6    2
         2     4       6    0    5    1
         3     9       6    0    4    1
  6      1     3       0    9    7    8
         2     6       0    7    6    8
         3    10       9    0    4    7
  7      1     3       1    0    5    7
         2     3       0    7    7    9
         3     4       0    5    3    7
  8      1     1       0    4    8    5
         2     7       7    0    7    4
         3     7       8    0    5    5
  9      1     5       9    0    5    4
         2     7       9    0    5    3
         3     9       7    0    5    3
 10      1     4       0    2    6    9
         2     4       0    2    7    7
         3    10       0    2    6    2
 11      1     9      10    0    9    6
         2     9       0    6   10    7
         3    10      10    0    7    5
 12      1     4       0   10   10    6
         2     7      10    0    9    5
         3    10       5    0    6    4
 13      1     1       0   10    7    5
         2     7       7    0    7    4
         3    10       7    0    7    1
 14      1     1       7    0    4    9
         2     3       6    0    4    8
         3     9       5    0    3    8
 15      1     3       7    0    6    8
         2     5       4    0    4    5
         3    10       0    7    4    4
 16      1     4       0    5    9    8
         2     8       6    0    5    5
         3    10       2    0    3    2
 17      1     4      10    0    7   10
         2     5       5    0    4    7
         3    10       3    0    1    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16    7  119  110
************************************************************************
