************************************************************************
file with basedata            : cn149_.bas
initial value random generator: 286438715
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24        8       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  13
   3        3          3           8   9  14
   4        3          1           5
   5        3          2           6   7
   6        3          3          15  16  17
   7        3          3           8   9  14
   8        3          2          11  12
   9        3          3          10  11  15
  10        3          2          12  13
  11        3          2          13  17
  12        3          1          16
  13        3          1          16
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       0    1    4
         2     2       8    0    4
         3     6       7    0    1
  3      1     2       6    0    5
         2    10       0    8    4
         3    10       0    9    3
  4      1     2      10    0    7
         2     6       8    0    5
         3     8       0    9    1
  5      1     1       0    4    6
         2     3       6    0    6
         3     7       0    4    5
  6      1     8       0    6    8
         2    10       0    5    8
         3    10       6    0    7
  7      1     3       0    5    4
         2     3       5    0    3
         3     9       4    0    2
  8      1     1       7    0    2
         2     3       0    7    2
         3     4       0    3    2
  9      1     5       5    0    8
         2     7       5    0    7
         3    10       5    0    6
 10      1     4       9    0    3
         2     5       9    0    2
         3    10       0    5    1
 11      1     4       0    6    3
         2     4       0    4    5
         3    10       1    0    3
 12      1     1       0    7    3
         2     3       0    5    2
         3     5       9    0    2
 13      1     1       0    2    5
         2     3       0    2    4
         3     9       5    0    4
 14      1     1       9    0    6
         2     3       0    8    4
         3     6       0    7    3
 15      1     2       0    9    6
         2     3       0    6    5
         3     7       7    0    5
 16      1     8       5    0    8
         2     8       6    0    7
         3     9       5    0    6
 17      1     4       6    0    4
         2     9       0    2    3
         3     9       6    0    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   11    5   77
************************************************************************
