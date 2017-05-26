************************************************************************
file with basedata            : cm156_.bas
initial value random generator: 1974781712
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  95
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31       12       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6  13  14
   3        1          3           5   6  13
   4        1          3           7  10  17
   5        1          3           8   9  11
   6        1          2           8  15
   7        1          2          13  16
   8        1          2          12  17
   9        1          2          12  14
  10        1          1          11
  11        1          3          12  14  15
  12        1          1          16
  13        1          1          15
  14        1          1          16
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     8       6    8    1   10
  3      1     3       7    4    5    3
  4      1     5       4    6    7    4
  5      1     7       6    9    5    4
  6      1     7       1    8    7    5
  7      1     4       9    2    2    3
  8      1     3      10    8    2    1
  9      1     7       7   10    5    2
 10      1    10       9    6    5    7
 11      1     6       8    4    4    3
 12      1     9       8    4    7    9
 13      1     6       7    7    8    9
 14      1     7       8    5    5    5
 15      1     7       6    6    7    4
 16      1     1       5    8    1    8
 17      1     5       2    5    2    8
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   30   31   73   85
************************************************************************
