************************************************************************
file with basedata            : cr19_.bas
initial value random generator: 26130
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  113
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       13       15       13
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  15
   3        3          2           5   7
   4        3          3           6   7  11
   5        3          2          16  17
   6        3          3           8  12  16
   7        3          3           8   9  10
   8        3          1          17
   9        3          2          12  14
  10        3          3          13  15  16
  11        3          2          13  14
  12        3          1          13
  13        3          1          17
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1      10    0    9
         2     6       0    7    0
         3     8       6    0    9
  3      1     2       6    0    6
         2     4       5    7    0
         3     4       0    0    2
  4      1     1       4    8    0
         2     2       0    0    3
         3     2       0    7    0
  5      1     4       6    0    7
         2     6       3    0    6
         3    10       0    3    0
  6      1     4       8    5    0
         2     4       0    6    0
         3     7       0    5    0
  7      1     1       6    0    6
         2     2       2    0    4
         3    10       0    0    4
  8      1     3       7    0    5
         2     3      10    5    0
         3     9       0    0    5
  9      1     1       6    0    7
         2     8       0    4    0
         3     9       0    0    5
 10      1     1       0    0    2
         2     2       0    0    1
         3     3       0    4    0
 11      1     2       0    0    6
         2     2       0    7    0
         3     3       0    2    0
 12      1     4       0    3    0
         2     5       8    2    0
         3    10       6    0    1
 13      1     1       3    0    8
         2     2       0    0    6
         3     4       0    4    0
 14      1     7       7    0    2
         2     8       6    7    0
         3     9       6    0    1
 15      1     2       9    0    8
         2     6       0    0    5
         3     6       0    4    0
 16      1     4       8    0    6
         2     7       5    0    4
         3    10       0    3    0
 17      1     1       6    6    0
         2     1       3    8    0
         3     9       0    4    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   13   45   40
************************************************************************
