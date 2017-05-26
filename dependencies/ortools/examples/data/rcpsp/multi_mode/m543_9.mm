************************************************************************
file with basedata            : cm543_.bas
initial value random generator: 379519140
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  137
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       12        0       12
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3           6   9  10
   3        5          3           5   6  11
   4        5          3           7   8  13
   5        5          3          13  14  17
   6        5          1          12
   7        5          2          11  12
   8        5          3          10  11  12
   9        5          2          13  15
  10        5          1          16
  11        5          1          15
  12        5          2          14  17
  13        5          1          16
  14        5          2          15  16
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       6    0   10    8
         2     6       0   10   10    6
         3     7       6    0    9    5
         4     8       0    9    9    3
         5     9       6    0    8    1
  3      1     1       9    0    3    8
         2     1       0    8    3    8
         3     7       0    8    2    8
         4     8       0    7    2    8
         5     9       9    0    1    8
  4      1     2       0    9    9    8
         2     4       0    9    6    8
         3     5       6    0    5    7
         4    10       0    9    1    6
         5    10       0    9    2    5
  5      1     2       0    7    6    9
         2     3       3    0    5    9
         3     3       0    6    5    9
         4     4       3    0    3    8
         5     6       0    5    2    8
  6      1     3       6    0    5   10
         2     5       4    0    5   10
         3     5       0    4    5    9
         4     6       0    3    3    9
         5     9       0    2    3    9
  7      1     2       3    0    9    7
         2     2       5    0   10    6
         3     3       0    8    9    6
         4     5       0    6    9    5
         5     7       0    1    8    4
  8      1     1       0    9    4    5
         2     2       7    0    4    4
         3     6       6    0    4    3
         4     7       0    5    3    3
         5     8       6    0    3    2
  9      1     4       5    0    9    8
         2     6       0    9    8    6
         3     7       0    8    5    6
         4     7       3    0    6    5
         5    10       0    8    5    4
 10      1     6       0    6    6    7
         2     6      10    0    7    7
         3     8       9    0    6    6
         4     9       9    0    5    6
         5     9       0    6    6    6
 11      1     1       6    0    8    5
         2     2       0    9    7    4
         3     5       0    8    7    4
         4     7       0    8    7    3
         5     9       6    0    6    2
 12      1     1       0    3    7    2
         2     1       6    0    6    2
         3     3       5    0    4    2
         4     7       0    3    3    1
         5     7       3    0    3    1
 13      1     1       5    0    9    7
         2     3       5    0    9    5
         3     5       0    6    8    5
         4     7       4    0    8    2
         5     9       3    0    8    1
 14      1     3       0    4    8    5
         2     4       0    3    8    4
         3     6       7    0    7    3
         4     9       4    0    6    3
         5     9       0    2    5    3
 15      1     4       7    0    5    9
         2     6       7    0    5    8
         3     6       0    8    5    7
         4     8       7    0    4    5
         5     8       0    7    4    6
 16      1     1       4    0    5    3
         2     1       0    9    5    3
         3     2       0    8    5    3
         4     5       4    0    4    2
         5    10       4    0    2    1
 17      1     2       0   10   10    9
         2     3       0    8    6    8
         3     3       0    6    8    9
         4     6       0    6    5    6
         5     8       0    1    2    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   26   91   88
************************************************************************
