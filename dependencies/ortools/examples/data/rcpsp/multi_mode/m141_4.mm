************************************************************************
file with basedata            : cm141_.bas
initial value random generator: 730818827
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  81
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33        3       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3          13  15  16
   3        1          3           5   8  14
   4        1          3           5   9  14
   5        1          3           6   7  10
   6        1          3          11  12  13
   7        1          2          15  17
   8        1          2           9  12
   9        1          1          13
  10        1          2          11  12
  11        1          2          15  16
  12        1          1          17
  13        1          1          17
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
  2      1     1       4    0   10    6
  3      1     9       0    5    6    6
  4      1     8       8    0   10    4
  5      1     3       0    5    8    7
  6      1    10       0    2    6    6
  7      1     5       0    2    4    4
  8      1     7       0    3    9    6
  9      1     1       0    7    5    5
 10      1     7       6    0    6    6
 11      1     2       8    0    2    5
 12      1    10       0    9    2    7
 13      1     8       0    9   10    4
 14      1     4       0    3    8    9
 15      1     3       7    0    7    4
 16      1     2       0    3   10    9
 17      1     1       5    0    3    2
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    9   12  106   90
************************************************************************
