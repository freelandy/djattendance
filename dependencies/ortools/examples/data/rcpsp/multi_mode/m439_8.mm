************************************************************************
file with basedata            : cm439_.bas
initial value random generator: 1192914007
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  138
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15        9       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          1           7
   3        4          3           5   9  14
   4        4          3           6   7   9
   5        4          2           6   8
   6        4          3          10  11  13
   7        4          3          11  14  15
   8        4          3          12  13  17
   9        4          2          10  13
  10        4          2          15  17
  11        4          1          17
  12        4          1          16
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
  2      1     5       9    2    5    4
         2     7       9    2    4    3
         3     9       9    1    3    3
         4    10       8    1    2    2
  3      1     2       9    9    8    8
         2     3       9    9    6    6
         3     8       9    8    3    5
         4     9       9    8    3    3
  4      1     2       2    4    9    9
         2     3       2    4    7    7
         3     4       2    3    5    5
         4     7       2    2    3    5
  5      1     1       5    8    8    3
         2     2       4    8    6    3
         3     5       4    8    5    2
         4    10       3    6    5    1
  6      1     6       7    9    9    7
         2     6       7    6    8    8
         3     7       6    4    4    6
         4     7       4    5    5    5
  7      1     3       3    8    7    9
         2     4       3    8    6    6
         3     5       2    8    6    4
         4    10       2    7    4    1
  8      1     7       7    8   10    8
         2     7       6    8   10    9
         3     8       3    7    9    5
         4    10       3    6    9    3
  9      1     4       6   10    9    5
         2     7       6    5    7    4
         3     9       4    1    2    3
         4     9       2    2    3    4
 10      1     3       8    8    6    8
         2     7       6    8    5    7
         3     8       5    7    5    7
         4     9       3    5    4    6
 11      1     1       8    7    9    4
         2     5       5    6    8    3
         3     5       7    5    7    4
         4     7       3    3    7    3
 12      1     4       6    9    7    5
         2     7       5    9    6    3
         3     8       1    7    5    1
         4     8       2    8    3    3
 13      1     2       2    4    4    7
         2     3       2    3    4    5
         3     4       2    3    3    5
         4     7       2    2    3    2
 14      1     2       6    4    9    4
         2     2       6    4    8    5
         3     8       6    3    7    2
         4     9       5    3    4    2
 15      1     1       8    3   10   10
         2     2       5    3    9   10
         3     4       3    2    8   10
         4     7       1    2    8    9
 16      1     1       6    9    2    9
         2     7       4    9    2    8
         3     8       3    7    2    7
         4     9       2    6    2    6
 17      1     1       9    9    9    9
         2     2       7    7    8    9
         3     3       4    3    5    9
         4    10       2    3    4    9
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   24   28   81   74
************************************************************************
