************************************************************************
file with basedata            : cr432_.bas
initial value random generator: 1865542435
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  132
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17       10       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3          13  14  15
   3        3          3           5   8  11
   4        3          2           8   9
   5        3          3           6   7  12
   6        3          2          14  15
   7        3          2          16  17
   8        3          2          12  13
   9        3          2          10  13
  10        3          3          11  14  15
  11        3          1          12
  12        3          1          17
  13        3          2          16  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     1       9    6    7    4    5    0
         2     1       6    6    7    4   10    0
         3    10       5    4    7    4    0    4
  3      1     2       3    7    4    8    5    0
         2     3       3    5    4    7    0   10
         3     6       3    4    4    5    0   10
  4      1     1       7    9    9    9    9    0
         2     3       6    7    8    7    0    4
         3     5       6    6    7    3    7    0
  5      1     2       5    6    6    7    7    0
         2     4       5    5    6    7    0   10
         3     6       4    5    6    2    6    0
  6      1     4       6    6    7   10    8    0
         2     9       5    5    7    9    8    0
         3    10       4    3    6    9    0    4
  7      1     2       5    9    5    2    0    9
         2     3       5    8    5    1    0    8
         3    10       5    8    5    1    1    0
  8      1     5       8    6    9   10    0    9
         2     9       4    4    9   10    4    0
         3    10       1    4    6    9    4    0
  9      1     5       3    7    4    8    4    0
         2     5       3    8    5    7    0   10
         3     9       2    4    2    7    5    0
 10      1     2       4   10    7    7    9    0
         2     4       4    9    4    4    9    0
         3     5       3    8    2    3    0    9
 11      1     1       9    8    7    5    6    0
         2     4       8    7    4    5    0    2
         3     9       8    7    2    4    6    0
 12      1     4       7    9    8    8    9    0
         2     5       6    9    8    4    8    0
         3    10       3    7    7    4    7    0
 13      1     2       4    5    7    7    9    0
         2     3       3    5    6    4    0    7
         3    10       3    5    6    3    0    7
 14      1     2       6    8    6    8    9    0
         2     4       6    8    5    5    0    2
         3     7       5    7    5    5    6    0
 15      1     1       5    9    6    6    9    0
         2     6       4    4    6    6    9    0
         3     8       4    2    4    6    8    0
 16      1     2       9   10    6    2    0    5
         2     8       8    7    6    1    5    0
         3    10       8    6    5    1    0    5
 17      1     4       7    7    8    3    0    4
         2     7       6    5    3    1    6    0
         3     7       6    4    1    2    8    0
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   24   30   26   30  113   89
************************************************************************
