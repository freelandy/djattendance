************************************************************************
file with basedata            : cr151_.bas
initial value random generator: 1459
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  135
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        6       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  13  14
   3        3          3           5  11  14
   4        3          3           5   6  13
   5        3          3           9  12  17
   6        3          2           7  14
   7        3          2           8  10
   8        3          3           9  11  16
   9        3          1          15
  10        3          2          15  17
  11        3          1          12
  12        3          1          15
  13        3          2          16  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       0    5    6
         2     5       0    5    5
         3     8       5    5    4
  3      1     4       0    5    7
         2     5       0    5    5
         3     9       0    3    5
  4      1     3       5    6    6
         2     3       6    6    5
         3     9       4    5    2
  5      1     1       0    8    8
         2     2       8    5    5
         3     6       0    4    4
  6      1     6       0    7    7
         2     6       0    6    8
         3     8       0    4    7
  7      1     1       0    9    6
         2     1       9    8    7
         3    10       5    3    2
  8      1     1       0    6    9
         2     3       0    5    9
         3    10       0    2    9
  9      1     1       1    2   10
         2     7       0    1    8
         3     9       0    1    7
 10      1     1       9    2    9
         2     5       9    2    8
         3     6       0    2    8
 11      1     1      10    8    6
         2     2       0    7    6
         3     6       4    7    5
 12      1     8       4    8    8
         2     8       0    9    8
         3     9       0    7    6
 13      1     1       6    6    8
         2     1       1    9    7
         3    10       0    6    6
 14      1     7      10    3    9
         2     9      10    3    7
         3    10       0    2    5
 15      1     1       8    4    8
         2     4       4    3    7
         3     9       0    2    6
 16      1     5       9    7    7
         2     6       9    7    4
         3     8       0    3    4
 17      1     4       2    6    6
         2     6       2    5    4
         3     8       2    4    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   18   87  112
************************************************************************
