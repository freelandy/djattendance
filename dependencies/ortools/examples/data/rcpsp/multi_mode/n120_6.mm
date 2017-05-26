************************************************************************
file with basedata            : cn120_.bas
initial value random generator: 1709209033
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       16        1       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1          11
   3        3          1           6
   4        3          3           5   7   8
   5        3          3          10  13  14
   6        3          2           9  15
   7        3          3          10  11  14
   8        3          3           9  11  12
   9        3          2          16  17
  10        3          3          15  16  17
  11        3          1          13
  12        3          2          13  14
  13        3          1          17
  14        3          2          15  16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     3       6    0    0
         2     9       5    0    2
         3    10       0   10    2
  3      1     1       0    3    7
         2     7       3    0    4
         3     7       7    0    0
  4      1     3       7    0    6
         2     5       3    0    0
         3     8       0    9    6
  5      1     2       9    0    9
         2     6       0    6    0
         3     7       6    0    7
  6      1     4       0    6    9
         2     5       8    0    0
         3     7       0    1    0
  7      1     3       9    0    0
         2     5       6    0    0
         3     9       0    1    0
  8      1     4      10    0    6
         2     6       0    2    5
         3     6       8    0    6
  9      1     3       0    2    0
         2     3       5    0    0
         3     9       2    0    0
 10      1     2       0    6    0
         2     6       6    0    0
         3     8       3    0    9
 11      1     2       0    4    4
         2     3       7    0    0
         3     8       0    3    0
 12      1     6       0    5    5
         2     7       0    4    5
         3     8       5    0    5
 13      1     1       0    4    7
         2     7       0    2    6
         3     9       2    0    0
 14      1     1       5    0    2
         2     6       0    7    0
         3     8       4    0    0
 15      1     1      10    0    9
         2     2       0    7    0
         3     8       8    0    4
 16      1     1       6    0    7
         2     2       4    0    7
         3     9       0    7    0
 17      1     2       7    0    0
         2     6       0    8    0
         3     6       6    0    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   35   25   64
************************************************************************
