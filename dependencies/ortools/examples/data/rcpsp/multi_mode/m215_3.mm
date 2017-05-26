************************************************************************
file with basedata            : cm215_.bas
initial value random generator: 1414136946
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
    1     16      0       23       11       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           5   7  12
   3        2          3           8   9  13
   4        2          2           6  11
   5        2          3          11  13  17
   6        2          3          10  12  13
   7        2          1          16
   8        2          2          10  11
   9        2          3          10  12  16
  10        2          2          14  15
  11        2          1          15
  12        2          2          15  17
  13        2          1          16
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
  2      1     5       9    6    0    7
         2     8       6    2    0    5
  3      1     1       7    8    7    0
         2     7       6    6    2    0
  4      1     4       4    7    4    0
         2     8       3    4    0    6
  5      1     4       9    2    9    0
         2     6       4    2    0    9
  6      1     7       4    6    0    4
         2    10       4    4    4    0
  7      1     2       6    7    0    7
         2    10       6    7    0    6
  8      1     3       8    8    8    0
         2     8       8    7    7    0
  9      1     1       6    4    8    0
         2     8       4    4    7    0
 10      1     1       2    5    6    0
         2    10       2    4    0    6
 11      1     2       8    8    0    7
         2     3       4    7    0    7
 12      1     6       5    8    0    3
         2     8       4    8    4    0
 13      1     1       5    9    0    5
         2     3       4    8    0    1
 14      1     6       5    9    5    0
         2     8       4    9    5    0
 15      1     3       2    7    0    3
         2    10       1    5    6    0
 16      1     4       6    4    8    0
         2     4       6    3    0    5
 17      1     5       6    7    0    9
         2     6       5    4    7    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   21   49   45
************************************************************************
