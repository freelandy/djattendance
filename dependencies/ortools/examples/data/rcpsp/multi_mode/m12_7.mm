************************************************************************
file with basedata            : cm12_.bas
initial value random generator: 1653478348
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  103
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       41       14       41
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6  14  15
   3        1          3           5   6  11
   4        1          3           8  11  12
   5        1          2           7  13
   6        1          2           9  12
   7        1          3          10  12  15
   8        1          2           9  10
   9        1          1          13
  10        1          2          14  16
  11        1          2          15  16
  12        1          1          17
  13        1          2          16  17
  14        1          1          17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     6       0    7    0    5
  3      1     5       7    0    0    4
  4      1     9       0    5    4    0
  5      1     3      10    0    0   10
  6      1     7       0    7    5    0
  7      1     3       2    0    0    8
  8      1     5       0   10    0    5
  9      1     9       7    0    0    4
 10      1     3       2    0    0    8
 11      1     7       0    4    0    4
 12      1     6      10    0    8    0
 13      1     8       7    0    2    0
 14      1     6       4    0    0    4
 15      1     8       5    0    0   10
 16      1    10       0    3    0    1
 17      1     8       7    0    0    5
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   18   16   19   68
************************************************************************
