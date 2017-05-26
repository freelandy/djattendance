************************************************************************
file with basedata            : cm431_.bas
initial value random generator: 9470
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  134
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17        9       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          3           5   8   9
   3        4          3           7  13  14
   4        4          2           5  11
   5        4          3           6  14  17
   6        4          2          12  13
   7        4          3           8  10  15
   8        4          1          11
   9        4          3          10  11  12
  10        4          1          17
  11        4          1          17
  12        4          2          15  16
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
  2      1     6       7    4    3    0
         2     8       7    4    0    8
         3     9       6    3    0    3
         4    10       5    3    0    2
  3      1     3       7   10    0    1
         2     3       6   10    0    4
         3     3       7   10    4    0
         4     4       6    9    2    0
  4      1     6       7    8    6    0
         2    10       5    8    3    0
         3    10       7    7    0    2
         4    10       4    8    0    3
  5      1     1       6    9    0    5
         2     3       6    4    8    0
         3     3       6    5    0    3
         4     7       6    4    7    0
  6      1     3      10    8    0    8
         2     6      10    7    5    0
         3     7       9    6    4    0
         4     8       9    4    4    0
  7      1     4       5   10    0    6
         2     5       4   10    0    4
         3     5       5   10    8    0
         4     7       4   10    4    0
  8      1     2      10   10    8    0
         2     3       8    8    0    6
         3     5       5    6    8    0
         4     8       2    6    8    0
  9      1     3       9    8    0    6
         2     4       8    6    0    3
         3     6       6    3    0    1
         4     9       2    3    1    0
 10      1     2       7    3    6    0
         2     6       5    3    6    0
         3     8       4    2    6    0
         4     9       2    1    5    0
 11      1     3       4   10    5    0
         2     4       4   10    0    6
         3     8       3   10    4    0
         4     9       3    9    0    4
 12      1     1       6    6    0   10
         2     3       6    6   10    0
         3     6       6    3    0   10
         4     9       5    1    0   10
 13      1     3       9    1    7    0
         2     3       7    1    0    9
         3     6       5    1    7    0
         4    10       4    1    0    9
 14      1     3       9    5    5    0
         2     4       6    4    5    0
         3     5       5    4    4    0
         4     7       4    4    0    8
 15      1     4      10    7    9    0
         2     8      10    7    0    5
         3     9       9    5    0    5
         4    10       9    2    3    0
 16      1     3       5    5    0    5
         2     5       5    5    5    0
         3     6       4    5    1    0
         4     9       3    4    0    4
 17      1     3       6    9    9    0
         2     4       6    7    4    0
         3     7       5    5    0    5
         4     8       5    4    0    5
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   31   26   99   94
************************************************************************
