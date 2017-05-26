************************************************************************
file with basedata            : cm163_.bas
initial value random generator: 25536
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  99
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       32        2       32
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          2          10  14
   3        1          3           5   6   9
   4        1          2           5   8
   5        1          3           7  14  15
   6        1          3           7   8  11
   7        1          1          16
   8        1          2          10  12
   9        1          3          10  13  17
  10        1          1          15
  11        1          1          12
  12        1          3          13  16  17
  13        1          1          15
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
  2      1     5       4    9    5    2
  3      1     4       8    4    3    6
  4      1     9       3    7    6   10
  5      1     9       9    6    4    8
  6      1     5       4    4   10    6
  7      1     6       5    3    2    8
  8      1     9       5    4    5    6
  9      1     5       5    4    7    9
 10      1     7       5    2    2    5
 11      1     7       1   10    3    3
 12      1     5       3    5    3   10
 13      1     7       6    4    1    7
 14      1     5       1    2    9    7
 15      1     1       4    6    6    1
 16      1     8       8    8    7    1
 17      1     7       8    6    5    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   21   78   95
************************************************************************
