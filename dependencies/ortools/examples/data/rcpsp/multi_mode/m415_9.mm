************************************************************************
file with basedata            : cm415_.bas
initial value random generator: 588286891
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  140
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       16       13       16
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          2           5   7
   3        4          2          16  17
   4        4          3           6  11  13
   5        4          3           6   8  13
   6        4          2          10  17
   7        4          3          10  11  13
   8        4          2           9  11
   9        4          2          14  17
  10        4          1          12
  11        4          2          14  15
  12        4          2          14  15
  13        4          2          15  16
  14        4          1          16
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       7    5    0    7
         2     7       7    6    0    6
         3     8       7    3    8    0
         4     9       5    3    0    2
  3      1     1      10   10    4    0
         2     5      10   10    0    5
         3     9      10    9    0    1
         4    10       9    9    4    0
  4      1     1       4    5    7    0
         2     1       4    4    0    3
         3     2       3    4    7    0
         4    10       3    1    6    0
  5      1     1       3    7    4    0
         2     3       3    6    3    0
         3     4       3    5    2    0
         4     8       3    2    0    5
  6      1     2       7    9    0    8
         2     3       4    7    6    0
         3     3       3    8    9    0
         4     9       1    5    4    0
  7      1     3       5    2    7    0
         2     5       4    2    6    0
         3     5       5    2    0    7
         4     7       4    2    4    0
  8      1     2       8    6    0    9
         2     5       5    4    0    7
         3     8       4    3    0    5
         4    10       1    3    0    4
  9      1     1       9    5    0    6
         2     5       9    5    0    2
         3     8       9    5    7    0
         4    10       8    4    2    0
 10      1     1       9    7    9    0
         2     2       7    5    9    0
         3     5       7    5    0    2
         4     9       5    2    8    0
 11      1     3       4    9    0    6
         2     4       3    4    0    3
         3     4       4    6   10    0
         4     8       3    1    6    0
 12      1     1       7    8    0    6
         2     2       6    6    0    5
         3     4       6    3    7    0
         4    10       4    1    0    4
 13      1     1       4    8    7    0
         2     2       3    7    6    0
         3     3       3    7    0    3
         4     7       2    6    0    2
 14      1     1       9    8    7    0
         2     1      10    6    6    0
         3     2       9    5    0    3
         4     7       8    3    3    0
 15      1     3       9    4    5    0
         2     4       7    4    0    8
         3     9       6    3    3    0
         4     9       5    1    0    7
 16      1     1       9   10    9    0
         2     3       8    9    9    0
         3     8       8    9    0    3
         4     9       7    8    0    3
 17      1     1       5    7    9    0
         2     7       5    6    0    9
         3     8       4    3    3    0
         4     8       4    3    0    8
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   24   55   47
************************************************************************
