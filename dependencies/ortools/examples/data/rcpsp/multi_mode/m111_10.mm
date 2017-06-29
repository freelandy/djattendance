************************************************************************
file with basedata            : cm111_.bas
initial value random generator: 798562220
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  85
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       41        8       41
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           8  10  14
   3        1          1          13
   4        1          3           5   9  10
   5        1          1           6
   6        1          2           7   8
   7        1          2          13  15
   8        1          3          11  12  15
   9        1          3          11  12  13
  10        1          3          12  15  17
  11        1          2          16  17
  12        1          1          16
  13        1          1          14
  14        1          2          16  17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       0    6    0    1
  3      1     1       4    0    0    7
  4      1     2       0    5    6    0
  5      1     4       9    0    0   10
  6      1     4       0    4    0    6
  7      1     7       0    4    0    6
  8      1     6       0    7    2    0
  9      1     9       2    0    0    5
 10      1     8       0    2    2    0
 11      1     5       3    0    0    4
 12      1     3       0    7    5    0
 13      1     8       0    5    8    0
 14      1     7       0    6    0    5
 15      1     5       6    0    1    0
 16      1     3       1    0    0    4
 17      1     9       0    5    0    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   11   12   24   52
************************************************************************