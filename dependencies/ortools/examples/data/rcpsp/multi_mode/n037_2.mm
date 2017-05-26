************************************************************************
file with basedata            : me37_.bas
initial value random generator: 1359262733
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  141
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       27        5       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  13
   3        3          3           8   9  13
   4        3          3           5  12  18
   5        3          2           9  11
   6        3          3           7   8  18
   7        3          3          10  12  16
   8        3          2          15  17
   9        3          2          14  16
  10        3          2          14  19
  11        3          1          15
  12        3          2          14  15
  13        3          1          19
  14        3          1          17
  15        3          1          19
  16        3          1          17
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     2      10    8
         2     3      10    7
         3     4      10    5
  3      1     4       8    6
         2     5       7    6
         3     5       8    4
  4      1     1       8    7
         2     5       6    6
         3     7       4    5
  5      1     5       7    2
         2     7       4    1
         3    10       3    1
  6      1     2       9    3
         2     4       8    2
         3     8       6    2
  7      1     8       5    5
         2     8       6    3
         3     9       4    2
  8      1     5       4    7
         2     6       4    5
         3     7       2    3
  9      1     3       3    9
         2     5       2    8
         3     8       2    7
 10      1     1       3    9
         2     4       2    8
         3     8       1    6
 11      1     2       9    3
         2     6       6    2
         3    10       5    2
 12      1     5       6    8
         2     8       5    6
         3    10       4    5
 13      1     1       9    4
         2     6       2    3
         3     6       6    1
 14      1     4       8    7
         2     4       9    6
         3     7       8    6
 15      1     4      10    8
         2     8       3    4
         3     8       6    3
 16      1     6       6   10
         2     7       5    8
         3     9       4    6
 17      1     6       9    5
         2     7       7    4
         3     7       4    5
 18      1     2       4   10
         2     7       3    6
         3    10       2    3
 19      1     4       3    9
         2     6       3    8
         3     8       3    7
 20      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   15   12
************************************************************************
