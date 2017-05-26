************************************************************************
file with basedata            : me19_.bas
initial value random generator: 1824092413
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  118
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       18        6       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   8  10
   3        3          3           6   7   8
   4        3          3           5  12  15
   5        3          2          11  13
   6        3          2           9  10
   7        3          2          11  12
   8        3          2          11  13
   9        3          3          12  13  15
  10        3          1          14
  11        3          1          14
  12        3          1          14
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     1       6    0
         2     5       0    5
         3    10       0    2
  3      1     4       7    0
         2     5       0    8
         3     6       4    0
  4      1     1       0   10
         2     5       0    9
         3     9       7    0
  5      1     1       4    0
         2     4       0    2
         3     6       1    0
  6      1     2       7    0
         2     4       4    0
         3     9       1    0
  7      1     4       0    6
         2     7       0    4
         3     9       6    0
  8      1     4       0    6
         2     4       1    0
         3     6       0    5
  9      1     6       0   10
         2     6       8    0
         3     9       4    0
 10      1     5       4    0
         2     5       0    7
         3    10       0    5
 11      1     2       0    7
         2     7       0    5
         3     9       3    0
 12      1     4       0   10
         2    10       0    9
         3    10       8    0
 13      1     5       7    0
         2     7       0    8
         3    10       0    4
 14      1     2       0    9
         2     8       4    0
         3    10       3    0
 15      1     2       8    0
         2     4       7    0
         3     5       0    7
 16      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   20   23
************************************************************************
