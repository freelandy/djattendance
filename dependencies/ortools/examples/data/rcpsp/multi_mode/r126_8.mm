************************************************************************
file with basedata            : cr126_.bas
initial value random generator: 712712881
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15        1       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7  13
   3        3          3           6   8  14
   4        3          3          10  15  16
   5        3          3           6   8  14
   6        3          1          12
   7        3          3           8   9  16
   8        3          2          11  12
   9        3          2          10  12
  10        3          2          11  14
  11        3          1          17
  12        3          2          15  17
  13        3          1          15
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       8    0    4
         2     5       7    0    4
         3     8       4    4    0
  3      1     5       0    0    2
         2     9       7    0    1
         3    10       0    3    0
  4      1     2       0    0    5
         2     5       0    0    4
         3     9       0    0    1
  5      1     5       0    0   10
         2     7       6    0    9
         3     7       6    4    0
  6      1     2       9    7    0
         2     4       7    5    0
         3     8       0    4    0
  7      1     2       2    0    5
         2     6       0    0    3
         3     7       0    3    0
  8      1     3      10    0    8
         2     4       0    0    8
         3     8       8    0    4
  9      1     4       0    0    4
         2     7       2   10    0
         3    10       0    7    0
 10      1     3       0    5    0
         2     6       0    0   10
         3     9       0    0    6
 11      1     1       5    5    0
         2     5       0    0    6
         3     6       2    0    4
 12      1     1       0    0    8
         2     3       5    3    0
         3     5       2    0    6
 13      1     2       7    5    0
         2     6       5    4    0
         3     7       0    0    4
 14      1     2       0    4    0
         2     6       0    0    6
         3     8       0    0    4
 15      1     4       8    9    0
         2     8       8    8    0
         3     9       5    8    0
 16      1     2      10    0    6
         2     4       0    5    0
         3     7       6    4    0
 17      1     1       2    9    0
         2     9       0    9    0
         3    10       0    0    5
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   15   76   83
************************************************************************
